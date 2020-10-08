cmake_minimum_required(VERSION 3.1.1)
project(timer)

set(CMAKE_CXX_STANDARD 11)

# Using the "cmake" generator
include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup(TARGETS)

add_executable(timer timer.cpp)
target_link_libraries(timer CONAN_PKG::poco
                            CONAN_PKG::boost)
