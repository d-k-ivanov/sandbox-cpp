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

# file(GLOB_RECURSE SRC_PROBLEMS
#     "problems/1.cpp"
#     "problems/2.cpp"
#     "problems/3.cpp"
# )
# source_group("Problems" FILES ${SRC_PROBLEMS})

# add_executable(SSLoyGraphicsCourse ${SRC} ${SRC_LIBS} ${SRC_PROBLEMS})
add_executable(SSLoyGraphicsCourse ${SRC} ${SRC_LIBS})

if(NOT TARGET SSLoyGraphicsCourse)
    add_custom_target(SSLoyGraphicsCourse)
    add_dependencies(SSLoyGraphicsCourse SSLoyGraphicsCourse)
endif()
