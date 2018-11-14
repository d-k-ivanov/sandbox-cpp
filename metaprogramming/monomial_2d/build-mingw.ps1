#!/usr/bin/env pwsh
# gcc -c -o bin/monomial_2d.o monomial_2d.cpp -lstdc++
# gcc -o bin/monomial_2d.exe bin/monomial_2d.o -lws2_32
g++ -c -o bin/monomial_2d.o monomial_2d.cpp -lstdc++
g++ -o bin/monomial_2d.exe bin/monomial_2d.o -lws2_32
