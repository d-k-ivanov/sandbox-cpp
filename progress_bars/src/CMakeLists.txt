file(GLOB_RECURSE SRC
    "main.h"
    "main.cpp"
    "ProgressBar.h"
)
source_group("Main" FILES ${SRC})

add_executable(progress-bars ${SRC})

if(NOT TARGET progress-bars)
    add_custom_target(progress-bars)
    add_dependencies(progress-bars progress-bars)
endif()
