#!/usr/bin/env pwsh
# Set-PSDebug -trace 2
clang -Xclang -flto-visibility-public-std -c -o bin/show__cplusplus.o show__cplusplus.cpp
# clang -std=c++17 -Xclang -flto-visibility-public-std -c -o bin/show__cplusplus.o show__cplusplus.cpp
clang -lws2_32 -o bin/show__cplusplus.exe bin/show__cplusplus.o
# Set-PSDebug -Off
