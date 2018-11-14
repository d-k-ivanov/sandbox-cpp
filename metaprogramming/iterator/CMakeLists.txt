cmake_minimum_required(VERSION 3.10)
project(iterator)

set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR})
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

if(TARGET_CPU MATCHES "x86_64")
    set(TARGET_BITS 64)
    set(TARGET_CPU_FAMILY "x86_64")
else()
    set(TARGET_BITS 32)
    set(TARGET_CPU_FAMILY "x86")
endif()

add_executable(iterator iterator.cpp)
