#!/usr/bin/env pwsh
clang -c -o bin/monomial_2d.o monomial_2d.cpp
clang -o bin/monomial_2d.exe bin/monomial_2d.o -lws2_32
