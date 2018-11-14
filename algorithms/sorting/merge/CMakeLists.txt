cmake_minimum_required(VERSION 3.7)
project(sorting-insertion)

set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR})
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})
set(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR})

include_directories("${PROJECT_SOURCE_DIR}")

set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -Weverything")

#set(ALGORITHMS_SORTING_INSERTION_SOURCE_FILES sorting-insertion.cpp sorting-insertion.hpp)
add_executable(sorting-merge ${PROJECT_SOURCE_DIR}/sorting-merge.cpp)
