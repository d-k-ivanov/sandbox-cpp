cmake_minimum_required(VERSION 3.1)
project(timer)


# Using the "cmake" generator
include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup(TARGETS)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/../_cmake)
include(compiler_flags)

add_executable(timer timer.cpp)
target_link_libraries(timer CONAN_PKG::poco
                            CONAN_PKG::boost
                            CONAN_PKG::hello)
