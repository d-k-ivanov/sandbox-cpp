cmake_minimum_required(VERSION 3.1)
project(timer)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/../_cmake)
include(base)
include(compiler)

set_base_vars()

# Using the "cmake" generator
include(${CMAKE_CURRENT_SOURCE_DIR}/conanbuildinfo.cmake)
conan_basic_setup(TARGETS)

# Print out Cmake Variables
include(cmake_debug)
cmake_get_cxx_compiler()
cmake_list_all_init_variables()
# cmake_list_all_variables()
# cmake_get_includes()


add_executable(timer timer.cpp)
target_link_libraries(timer CONAN_PKG::poco
                            CONAN_PKG::boost)
