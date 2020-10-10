# Remove-Item -Recurse -Force ./build
New-Item build -ItemType Directory -ErrorAction SilentlyContinue
Set-Location build

conan remove --locks
conan install . -pr ..\..\profile-vs2019-x64-static.txt --build=missing
conan search
conan search zlib/1.2.11@

cmake -G "Visual Studio 16 2019" -A x64 -DCMAKE_BUILD_TYPE="Release" ..
cmake --build . --config "Release"

conan install .. -pr ..\..\profile-vs2019-x64-static.txt -s build_type=Debug --build=missing
cmake -G "Visual Studio 16 2019" -A x64 -DCMAKE_BUILD_TYPE="Debug" ..
cmake --build .
