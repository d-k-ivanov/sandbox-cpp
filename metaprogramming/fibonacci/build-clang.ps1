#!/usr/bin/env pwsh
clang -c -o bin/fibonacci.o fibonacci.cpp
clang -o bin/fibonacci.exe bin/fibonacci.o -lws2_32
