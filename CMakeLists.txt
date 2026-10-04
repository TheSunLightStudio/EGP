cmake_minimum_required(VERSION 3.30.5)
project(EGP VERSION 0.1.0 LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 20)

include(cmake/packages.cmake)

add_subdirectory(app)
add_subdirectory(backend)

include(CTest)
enable_testing()
