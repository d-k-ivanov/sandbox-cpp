if(MAKE_TESTS)
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/tests)

    file(GLOB_RECURSE SRC
    )
    source_group("Main" FILES ${SRC})

    file(GLOB_RECURSE SRC_LIBS
    )
    source_group("Libs" FILES ${SRC_LIBS})

    file(GLOB_RECURSE SRC_TEST_COLORS
        "color_test.h"
        "color_test.cpp"
    )
    source_group("Test Colors" FILES ${SRC_TEST_COLORS})

    add_executable(color_test ${SRC} ${SRC_LIBS} ${SRC_TEST_COLORS})
endif()

