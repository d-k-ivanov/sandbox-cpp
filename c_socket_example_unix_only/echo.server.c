#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <sys/un.h>
#define MAXBUF 256
char buf[MAXBUF];
main()
{
    struct sockaddr_un  serv_addr, clnt_addr;
    int sockfd;
    int saddrlen, caddrlen, max_caddrlen, n;

    if ((sockfd = socket(AF_UNIX, SOCK_DGRAM,0)) < 0) {
        printf("unable create socket\n"); exit(1); }

    unlink("./echo.server");
    bzero(&serv_addr, sizeof(serv_addr));
    serv_addr.sun_family = AF_UNIX;
    strcpy(serv_addr.sun_path, "./echo.server");
    saddrlen = sizeof(serv_addr.sun_family) + strlen(serv_addr.sun_path);

    if (bind(sockfd, (struct sockaddr *)&serv_addr, saddrlen) <0) {
        printf("bind error\n"); exit(1); }

     max_caddrlen = sizeof(clnt_addr);
     for ( ; ; ) {
        caddrlen = max_caddrlen;
        n = recvfrom(sockfd, buf, MAXBUF, 0, (struct sockaddr *)&clnt_addr, &caddrlen);
        if ( n < 0 ) { printf("Receve ERROR\n"); exit(1); }
        if (sendto(sockfd, buf, n, 0, (struct sockaddr *)&clnt_addr, caddrlen) != n) {
            printf("Send Error\n"); exit(1); }
        }
}
