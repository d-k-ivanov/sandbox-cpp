#!/usr/bin/env pwsh
# Set-PSDebug -trace 2
clang -Xclang -flto-visibility-public-std -c -o bin/pow_runtime.o pow_runtime.cpp
clang -lws2_32 -o bin/pow_runtime.exe bin/pow_runtime.o
clang -Xclang -flto-visibility-public-std -c -o bin/pow_compiletime.o pow_compiletime.cpp
clang -lws2_32 -o bin/pow_compiletime.exe bin/pow_compiletime.o
# Set-PSDebug -Off
