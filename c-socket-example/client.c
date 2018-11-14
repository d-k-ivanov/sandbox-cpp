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

int main(int argc, char *argv[])
{
  int           init = socketInit();
  if (init != 0)
  {
    printf("Client: Initialisation failed. Exited...\n");
    exit(1);
  }

  SOCKET        Socket;
  int           BytesSent;
  SOCKADDR_IN   ServerAddress, ClientAddress;
  int           Port = 1500;
  char          Buffer[1024]= "Hello from Socket Client. Test string!";

  Socket = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
  if (Socket == INVALID_SOCKET)
  {
    printf("Client: Socket error! Exited...\n");
    socketQuit();
    exit(1);
  }
  else
    printf("Client: TCP socket is ready!\n");

  memset(&ServerAddress, 0, sizeof(ServerAddress));
  ServerAddress.sin_family = AF_INET;
  ServerAddress.sin_port = htons(Port);
  ServerAddress.sin_addr.s_addr = inet_addr("127.0.0.1");

  if (connect(Socket, (SOCKADDR *)&ServerAddress, sizeof(ServerAddress)) != 0)
  {
    printf("Client: Connection error! Exited...\n");
    socketQuit();
    exit(1);
  }
  else
    printf("Client: Socket connected to server.\n");

  getsockname(Socket, (SOCKADDR *)&ServerAddress, (int *)sizeof(ServerAddress));
  printf("Client: Sending data to %s:%d\n", inet_ntoa(ServerAddress.sin_addr), htons(ServerAddress.sin_port));

  BytesSent = send(Socket, Buffer, sizeof(Buffer), 0);

  if(BytesSent == SOCKET_ERROR)
    printf("Client: Error while sending data.\n");
  else
    printf("Client: Sending %d bytes.\n", BytesSent);
    memset(&ClientAddress, 0, sizeof(ClientAddress));
    getsockname(Socket, (SOCKADDR *)&ClientAddress, (int *)sizeof(ClientAddress));
    printf("Client: Current IP: %s, port: %d\n", inet_ntoa(ClientAddress.sin_addr), htons(ClientAddress.sin_port));

  sockClose(Socket);
  socketQuit();
  printf("Client: Exited. Bye!\n");

  return 0;
}
