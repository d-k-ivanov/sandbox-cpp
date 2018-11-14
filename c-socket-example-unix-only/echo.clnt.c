#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <sys/un.h>
#include <stddef.h>
#define MAXBUF 256
char buf[MAXBUF];
main()
{
    struct sockaddr_un  serv_addr, clnt_addr;
    int sockfd;
    int saddrlen, caddrlen, msglen, n;
	char msg[MAXBUF] = "Hello, world";
	
    bzero(&serv_addr, sizeof(serv_addr));
    serv_addr.sun_family = AF_UNIX;
    strcpy(serv_addr.sun_path, "./echo.server");
    saddrlen = sizeof(serv_addr.sun_family) + strlen(serv_addr.sun_path);
	
	if ((sockfd = socket(AF_UNIX, SOCK_DGRAM,0)) < 0) {
        printf("unable create socket\n"); exit(1); }

	bzero(&clnt_addr, sizeof(clnt_addr));
	clnt_addr.sun_family = AF_UNIX;
	strcpy(clnt_addr.sun_path, "/tmp/clnt.XXXX");
	mktemp(clnt_addr.sun_path);
	caddrlen = sizeof(clnt_addr.sun_family) + strlen(clnt_addr.sun_path);

    if (bind(sockfd, (struct sockaddr *)&clnt_addr, caddrlen) <0) {
        printf("bind error\n"); exit(1); }

	msglen = strlen(msg);
    if (sendto(sockfd, msg, msglen, 0, (struct sockaddr *)&serv_addr, saddrlen) != msglen) {
		printf("Send Error\n"); exit(1); }
	
	if ((n = recvfrom(sockfd, buf, MAXBUF, 0, NULL, 0)) < 0) {
		printf("Receve ERROR\n"); exit(1); }
	
	printf("Echo: %s\n",buf);
	
	close(sockfd);
	unlink(clnt_addr.sun_path);
	exit(0);
}
