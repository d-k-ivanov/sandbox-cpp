cmake_minimum_required(VERSION 3.1)
project(timer)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/../_cmake)
include(compiler_flags)

# Using the "cmake_find_package" generator
set(CMAKE_MODULE_PATH ${CMAKE_BINARY_DIR} ${CMAKE_MODULE_PATH})
set(CMAKE_PREFIX_PATH ${CMAKE_BINARY_DIR} ${CMAKE_PREFIX_PATH})

find_package(Boost REQUIRED)
find_package(Poco REQUIRED)

add_executable(timer timer.cpp)
target_link_libraries(timer Poco::Poco Boost::Boost)
