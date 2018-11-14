#!/usr/bin/env pwsh
gcc -O3 -DNDEBUG -o bin/c-ackermann1.exe c-ackermann1.c
gcc -O3 -DNDEBUG -o bin/c-ackermann2.exe c-ackermann2.c
gcc -O3 -DNDEBUG -o bin/c-ackermann3.exe c-ackermann3.c
g++ --std=c++17 -O3 -DNDEBUG -o bin/cpp-akermann1.exe cpp-akermann1.cpp
g++ --std=c++17 -O3 -DNDEBUG -o bin/cpp-akermann2.exe cpp-akermann2.cpp
