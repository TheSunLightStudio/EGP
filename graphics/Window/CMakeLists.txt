file(
    GLOB_RECURSE EGP_APP_SOURCE
    CONFIGURE_DEPENDS
    "src/*.cpp"
    "src/*.hpp"
    "include/*.hpp"
)
add_library(EGP_window ${EGP_APP_SOURCE})
target_include_directories(
    EGP_window
    PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include
)
target_link_libraries(EGP_window PUBLIC glfw)
