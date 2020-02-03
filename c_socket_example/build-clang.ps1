#requires -version 3
clang -c -o bin/client.o client.c
clang -o bin/client.exe bin/client.o -lws2_32
clang -c -o bin/server.o server.c
clang -o bin/server.exe bin/server.o -lws2_32
