#/usr/bin/env bash

g++ -lR -o a.exe a.cpp
g++ -lR -lRInside -o b.exe b.cpp
g++ -lR -lRInside -o c.exe c.cpp
