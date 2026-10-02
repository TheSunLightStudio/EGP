cmake_minimum_required(VERSION 4.1)
project(EGP VERSION 0.1.0 LANGUAGES C CXX)

include(cmake/packages.cmake)

add_subdirectory(app)

include(CTest)
enable_testing()
