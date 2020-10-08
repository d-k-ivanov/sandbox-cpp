mkdir build
cd build
conan install ..
conan search
cmake .. -DCMAKE_BUILD_TYPE="Release"
cmake --build .
