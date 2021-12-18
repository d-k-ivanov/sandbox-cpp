file(GLOB_RECURSE SRC
    "main.h"
    "main.cpp"
    "Log.h"
    "Log.cpp"
)
source_group("Main" FILES ${SRC})

file(GLOB_RECURSE SRC_LIBS
    "lib/*.cpp"
)
source_group("Libraries" FILES ${SRC_LIBS})

# file(GLOB_RECURSE SRC_TASKS
#     "tasks/1.cpp"
# )
# source_group("Tasks" FILES ${SRC_TASKS})

add_executable(cpp-series-one ${SRC} ${SRC_LIBS} ${SRC_TASKS})

if(NOT TARGET cpp-series-one)
    add_custom_target(cpp-series-one)
    add_dependencies(cpp-series-one cpp-series-one)
endif()

# target_include_directories(cpp-series-one PRIVATE ${CONAN_INCLUDE_DIRS})
target_link_libraries(cpp-series-one
                        CONAN_PKG::fmt
                        CONAN_PKG::spdlog
                     )
# target_link_libraries(cpp-series-one ${CONAN_LIBS})


file(GLOB_RECURSE JUNK_SRC
    "EndBrace.h"
    "junk.cpp"
)
source_group("Junk" FILES ${JUNK_SRC})
add_library(cpp-series-one-junk ${JUNK_SRC})

# if(MSVC)
#     target_compile_options(cpp-series-one-junk PUBLIC /P)
#     target_compile_options(cpp-series-one-junk PUBLIC /FA)
# endif()
