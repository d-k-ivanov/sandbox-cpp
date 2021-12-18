file(GLOB_RECURSE TEST_SRC
    "test_main.cpp"
    "conan_test.cpp"
)
source_group("Tests" FILES ${TEST_SRC})

add_executable(cpp-series-one-tests ${TEST_SRC})

if(NOT TARGET cpp-series-one-tests)
    add_custom_target(cpp-series-one-tests)
    add_dependencies(cpp-series-one-tests cpp-series-one-tests)
endif()

target_link_libraries(cpp-series-one-tests
                        CONAN_PKG::fmt
                        CONAN_PKG::catch2
                        CONAN_PKG::spdlog
                     )
