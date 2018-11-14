#!/usr/bin/env pwsh
# gcc -c -o bin/fibonacci.o fibonacci.cpp -lstdc++
# gcc -o bin/fibonacci.exe bin/fibonacci.o -lws2_32
g++ -c -o bin/fibonacci.o fibonacci.cpp -lstdc++
g++ -o bin/fibonacci.exe bin/fibonacci.o -lws2_32
