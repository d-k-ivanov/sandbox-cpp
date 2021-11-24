clang -cc1 -fdump-record-layouts -emit-llvm  1.cpp > clang-vtable-layout-1.cpp.txt
clang -cc1 -fdump-vtable-layouts -emit-llvm  1.cpp > clang-record-layout-1.cpp.txt
g++ -fdump-lang-class=gcc-1.cpp.txt 1.cpp
cl.exe 1.cpp /d1reportSingleClassLayoutMEOW > msvc-single-class-vtable-layout-1.cpp.txt
cl.exe 1.cpp /d1reportAllClassLayout > msvc-all-class-vtable-layout-1.cpp.txt
