file(GLOB_RECURSE SRC
    "main.h"
    "main.cpp"
)
source_group("Main" FILES ${SRC})

add_executable(multithreading ${SRC})

file(GLOB_RECURSE EXAMPLES_SRC
    "example01.cpp"
    "example02.cpp"
    "example03.cpp"
)
source_group("Examples" FILES ${EXAMPLES_SRC})

add_executable(example01 "example01.cpp")
add_executable(example02 "example02.cpp")
add_executable(example03 "example03.cpp")

if(NOT TARGET multithreading)
    add_custom_target(multithreading)
    add_dependencies(multithreading multithreading)
endif()
