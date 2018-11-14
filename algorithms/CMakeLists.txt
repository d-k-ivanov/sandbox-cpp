cmake_minimum_required(VERSION 3.7)
project(algorithms)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SORTING_INSERTION_SOURCE_FILES sorting/insertion/sorting-insertion.cpp sorting/insertion/sorting-insertion.hpp)
add_executable(sorting-insertion ${SORTING_INSERTION_SOURCE_FILES})

set(SORTING_MERGE_SOURCE_FILES sorting/merge/sorting-merge.cpp sorting/merge/sorting-merge.hpp)
add_executable(sorting-merge ${SORTING_MERGE_SOURCE_FILES})
