set_target_properties(${PROJECT_NAME}-client PROPERTIES
    EXPORT_COMPILE_COMMANDS ON
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED True
)

target_link_libraries(${PROJECT_NAME}-client ${PROJECT_NAME})

set_target_properties(${PROJECT_NAME} PROPERTIES
    EXPORT_COMPILE_COMMANDS ON
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED True
)

set(CMAKE_CXX_STANDARD 20)

add_compile_options(
    -Wall -Wextra -Werror
    $<$<CONFIG:RELEASE>:-O3>
    $<$<CONFIG:DEBUG>:-ggdb3>
)

if (CMAKE_CXX_COMPILER_ID STREQUAL Clang)
    add_compile_options(
        -Weverything
        -Wno-c++98-compat
    )
endif(CMAKE_CXX_COMPILER_ID STREQUAL Clang)

add_compile_definitions(
   $<$<CONFIG:RELEASE>:NDEBUG>
)
