#!/usr/bin/env pwsh
# gcc -c -o bin/iterator.o iterator.cpp -lstdc++
# gcc -o bin/iterator.exe bin/iterator.o -lws2_32
g++ -c -o bin/iterator.o iterator.cpp -lstdc++
g++ -o bin/iterator.exe bin/iterator.o -lws2_32
