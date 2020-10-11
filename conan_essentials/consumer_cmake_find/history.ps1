# Remove-Item -Recurse -Force ./build
New-Item build -ItemType Directory -ErrorAction SilentlyContinue
Set-Location build

conan install .. -pr windows-msvc-16-static-release-x64
conan search

cmake -G "Visual Studio 16 2019" -A x64 -DCMAKE_BUILD_TYPE="Release" ..
cmake --build . --config "Release"

