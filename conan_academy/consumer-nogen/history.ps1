# cl:
conan install . -g compiler_args -pr windows-msvc-16-static-release-x64
cl /EHsc timer.cpp `@conanbuildinfo.args

# gcc/clang:
conan install . -g compiler_args -pr windows-mingw-release-x64 --build=missing
g++ timer.cpp `@conanbuildinfo.args -o bin/timer

