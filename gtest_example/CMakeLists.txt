cmake_minimum_required(VERSION 3.1)
project(gtest_example)

# Using the "cmake" generator
include(${CMAKE_CURRENT_SOURCE_DIR}/conanbuildinfo.cmake)
conan_basic_setup(TARGETS)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/cmake)
# include(base)
# set_base_vars()

include(compiler_flags)

# Print out Cmake Variables
include(cmake_debug)
cmake_get_cxx_compiler()
cmake_list_all_init_variables()
# cmake_list_all_variables()
# cmake_get_includes()


add_executable(gtest_example main.cpp)
target_link_libraries(gtest_example CONAN_PKG::gtest)
