#!/usr/bin/env pwsh
g++ --std=c++17 -O3 -DNDEBUG -o bin/l2norm_demo.exe l2norm_demo.cpp
g++ --std=c++17 -O3 -DNDEBUG -o bin/l2norm_demo_folding.exe l2norm_demo_folding.cpp
g++ --std=c++17 -O3 -DNDEBUG -o bin/l2norm_demo_optimized.exe l2norm_demo_optimized.cpp
