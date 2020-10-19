conan create hello d-k-ivanov/testing -pr windows-msvc-16-static-release-x64
conan install consumer -pr windows-msvc-16-static-release-x64

cmake --version
# cmake version 3.18.4

conan create hello d-k-ivanov/testing -pr windows-msvc-16-static-release-x64
# -- Conan: Adjusting language standard
# -- CMAKE VERSION 3.18.4
# -- Configuring done

touch profile_with_cmake

conan create hello d-k-ivanov/testing -pr profile_with_cmake
# -- Conan: Adjusting language standard
# -- CMAKE VERSION 3.16.3
# -- Configuring done

cmake --version
# cmake version 3.18.4
