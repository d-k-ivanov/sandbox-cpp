conan remove --locks
conan install . -pr ..\profile-vs2019-x64-static.txt --build=missing
conan search

# Remove-Item -Recurse -Force ./_build
New-Item _build -ItemType Directory -ErrorAction SilentlyContinue
Set-Location _build

cmake -G "Visual Studio 16 2019" -A x64 -DCMAKE_BUILD_TYPE="Release"
cmake --build . --config "Release"
