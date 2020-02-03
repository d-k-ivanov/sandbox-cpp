/* cross platform header: https://stackoverflow.com/questions/28027937/cross-platform-sockets */
#ifdef _WIN32
  /* See http://stackoverflow.com/questions/12765743/getaddrinfo-on-win32 */
  #ifndef _WIN32_WINNT
    #define _WIN32_WINNT 0x0501  /* Windows XP. */
  #endif
  #include <winsock2.h>
  #include <Ws2tcpip.h>
#else
  /* Assume that any non-Windows platform uses POSIX-style sockets instead. */
  #include <sys/socket.h>
  #include <arpa/inet.h>
  #include <netdb.h>  /* Needed for getaddrinfo() and freeaddrinfo() */
  #include <unistd.h> /* Needed for close() */
#endif

#include <stdio.h>

int socketInit(void)
{
  #ifdef _WIN32
    WSADATA wsa_data;
    return WSAStartup(MAKEWORD(1,1), &wsa_data);
  #else
    return 0;
  #endif
}

int socketQuit(void)
{
  #ifdef _WIN32
    return WSACleanup();
  #else
    return 0;
  #endif
}

/* Note: For POSIX, typedef SOCKET as an int. */
int sockClose(SOCKET sock)
{
  int status = 0;
  #ifdef _WIN32
    status = shutdown(sock, SD_BOTH);
    if (status == 0) { status = closesocket(sock); }
  #else
    status = shutdown(sock, SHUT_RDWR);
    if (status == 0) { status = close(sock); }
  #endif
  return status;
}

int TimeoutTCP(SOCKET sock, int seconds)
{
  #ifdef _WIN32
    struct fd_set fds;
    FD_ZERO(&fds);
    FD_SET(sock, &fds);
    struct timeval timeout;
    timeout.tv_sec = seconds;
    timeout.tv_usec = 0;
    return select(0, &fds, 0, 0, &timeout);
  #else
    /* TBD */
  #endif
}

int main(int argc, char *argv[])
{
  int           init = socketInit();
  if (init != 0)
  {
    printf("Server: Initialisation failed. Exited...\n");
    exit(1);
  }

  SOCKET        Socket, NewSocket;
  int           BytesReceived;
  SOCKADDR_IN   ServerAddress, ClientAddress;
  int           Port = 1500;
  int           WorkTime = 10;
  char          Buffer[1024];

  Socket = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
  if (Socket == INVALID_SOCKET)
  {
    printf("Server: Socket error! Exited...\n");
    socketQuit();
    exit(1);
  }
  else
    printf("Server: TCP socket is ready!\n");

  memset(&ServerAddress, 0, sizeof(ServerAddress));
  ServerAddress.sin_family = AF_INET;
  ServerAddress.sin_port = htons(Port);
  ServerAddress.sin_addr.s_addr = htonl(INADDR_ANY);

  if (bind(Socket, (SOCKADDR *)&ServerAddress, sizeof(ServerAddress)) == SOCKET_ERROR)
  {
    printf("Server: Bind error! Exited...\n");
    socketQuit();
    exit(1);
  }
  else
    printf("Server: Socket binded.\n");

  if (listen(Socket, 5) == SOCKET_ERROR)
  {
    printf("Server: Error listening on socket! Exited...\n");
    socketQuit();
    exit(1);
  }
  else
    printf("Server: Socket is listening for connections...\n");

  while(1)
  {
    NewSocket = SOCKET_ERROR;
    while(NewSocket == SOCKET_ERROR)
    {
      NewSocket = accept(Socket, NULL, NULL);
      printf("Server: Accepting connections\n");
      BytesReceived = recv(NewSocket, Buffer, sizeof(Buffer), 0);
      if ( BytesReceived > 0 )
      {
        getsockname(Socket, (SOCKADDR *)&ServerAddress, (int *)sizeof(ServerAddress));
        printf("Server: Receiving connections on  %s:%d\n", inet_ntoa(ServerAddress.sin_addr), htons(ServerAddress.sin_port));
        memset(&ClientAddress, 0, sizeof(ClientAddress));
        getpeername(NewSocket, (SOCKADDR *)&ClientAddress, (int *)sizeof(ClientAddress));
        printf("Server: Client connected. IP: %s, port: %d\n", inet_ntoa(ClientAddress.sin_addr), htons(ClientAddress.sin_port));
        printf("Server: Received %d bytes\n", BytesReceived);
        printf("Server: Client data: \"");
        for(int i=0; i < BytesReceived; i++)
        {
          printf("%c", Buffer[i]);
        }
        printf("\"\n");
      }
      else if ( BytesReceived == 0 )
        printf("Server: Connection closed!\n");
      else
        printf("Server: Failed to recieve any data.\n");

      sockClose(NewSocket);

      if(TimeoutTCP(Socket, WorkTime) == 0)
        break;

    }
  }

  sockClose(Socket);
  socketQuit();
  printf("Server: Exited. Bye!\n");

  return 0;
}
