cmake_minimum_required(VERSION 4.4)

project(EGP VERSION 0.01 LANGUAGES C CXX)

include("cmake/package.cmake")
include("cmake/imgui_package.cmake")

add_subdirectory(core)
add_subdirectory(graphics)
add_subdirectory(ui)
add_subdirectory(app)
