#!/usr/bin/env pwsh
clang -O3 -DNDEBUG -o bin/c-ackermann1.exe c-ackermann1.c
clang -O3 -DNDEBUG -o bin/c-ackermann2.exe c-ackermann2.c
clang -O3 -DNDEBUG -o bin/c-ackermann3.exe c-ackermann3.c
clang --std=c++17 -O3 -DNDEBUG -o bin/cpp-akermann1.exe cpp-akermann1.cpp
clang --std=c++17 -O3 -DNDEBUG -o bin/cpp-akermann2.exe cpp-akermann2.cpp
