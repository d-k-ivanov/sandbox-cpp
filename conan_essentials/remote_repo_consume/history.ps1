mkd build
conan install .. -pr windows-msvc-16-static-release-x64 -r conan-divanov
cmake -G "Visual Studio 16 2019" -A x64 -DCMAKE_BUILD_TYPE="Release" ..
cmake --build . --config "Release"
bin/main.exe
