file(GLOB_RECURSE EGP_CORE_SOURCE "src/*.cpp" "include/EGP/*.hpp")
add_library(EGP_core ${EGP_CORE_SOURCE})
target_include_directories(EGP_core PUBLIC include)
