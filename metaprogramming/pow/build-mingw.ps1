#!/usr/bin/env pwsh
g++ -c -o bin/pow_runtime.o pow_runtime.cpp -lstdc++
g++ -o bin/pow_runtime.exe bin/pow_runtime.o -lws2_32
g++ -c -o bin/pow_compiletime.o pow_compiletime.cpp -lstdc++
g++ -o bin/pow_compiletime.exe bin/pow_compiletime.o -lws2_32
