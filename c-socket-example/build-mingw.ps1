#requires -version 3
gcc -c -o bin/client.o client.c
gcc -o bin/client.exe bin/client.o -lws2_32
gcc -c -o bin/server.o server.c
gcc -o bin/server.exe bin/server.o -lws2_32
