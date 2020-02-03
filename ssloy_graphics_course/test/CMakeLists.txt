if(PROJECT_SSLOY_BUILD_TESTS)
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/tests)

    file(GLOB_RECURSE SRC
    "main.h"
    "main.cpp"
    )
    source_group("Main" FILES ${SRC})

    file(GLOB_RECURSE SRC_LIBS
        "../lib/cxxopts.h"
        "../lib/formats.h"
        "../lib/generators.h"
        "../lib/logger.h"
        "../lib/timer.h"
    )
    source_group("Libs" FILES ${SRC_LIBS})

    file(GLOB_RECURSE SRC_TESTS
        "max_values.cpp"
        "unicode.cpp"
    )
    source_group("Tests" FILES ${SRC_TESTS})

    add_executable(SSLoyGraphicsCourseTests ${SRC} ${SRC_LIBS} ${SRC_TESTS})
endif()

