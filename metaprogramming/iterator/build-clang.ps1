#!/usr/bin/env pwsh
clang -c -o bin/iterator.o iterator.cpp
clang -o bin/iterator.exe bin/iterator.o -lws2_32
