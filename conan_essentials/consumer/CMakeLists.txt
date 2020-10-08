cmake_minimum_required(VERSION 2.8.12)
project(timer)
add_compile_options(-std=c++11)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/../_cmake)
include(outputs)
set_output_vars()

# Using the "cmake" generator
include(${CMAKE_CURRENT_SOURCE_DIR}/conanbuildinfo.cmake)
conan_basic_setup(TARGETS)

add_executable(timer timer.cpp)
target_link_libraries(timer CONAN_PKG::poco
                            CONAN_PKG::boost)
