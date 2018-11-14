#!/usr/bin/env pwsh
g++ -c -o bin/show__cplusplus.o show__cplusplus.cpp -lstdc++
g++ -o bin/show__cplusplus.exe bin/show__cplusplus.o -lws2_32
