file(GLOB_RECURSE SRC
    "main.h"
    "main.cpp"
)
source_group("Main" FILES ${SRC})

# file(GLOB_RECURSE SRC_LIBS
#     "../lib/types.h"
# )
# source_group("Libraries" FILES ${SRC_LIBS})

# file(GLOB_RECURSE SRC_TASKS
#     "tasks/1.cpp"
# )
# source_group("Tasks" FILES ${SRC_TASKS})

add_executable(cherno-cpp-series ${SRC} ${SRC_LIBS} ${SRC_TASKS})

if(NOT TARGET cherno-cpp-series)
    add_custom_target(cherno-cpp-series)
    add_dependencies(cherno-cpp-series cherno-cpp-series)
endif()

# target_include_directories(cherno-cpp-series PRIVATE ${CONAN_INCLUDE_DIRS})
target_link_libraries(cherno-cpp-series
                        CONAN_PKG::fmt
                        CONAN_PKG::spdlog
                     )
# target_link_libraries(cherno-cpp-series ${CONAN_LIBS})
