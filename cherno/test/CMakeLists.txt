file(GLOB_RECURSE TEST_SRC
    "test_main.cpp"
    "conan_test.cpp"
)
source_group("Tests" FILES ${TEST_SRC})

add_executable(cherno-cpp-series-tests ${TEST_SRC})

if(NOT TARGET cherno-cpp-series-tests)
    add_custom_target(cherno-cpp-series-tests)
    add_dependencies(cherno-cpp-series-tests cherno-cpp-series-tests)
endif()

target_link_libraries(cherno-cpp-series-tests
                        CONAN_PKG::fmt
                        CONAN_PKG::catch2
                        CONAN_PKG::spdlog
                     )
