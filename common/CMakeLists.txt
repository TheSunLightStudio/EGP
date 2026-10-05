set(EGP_COMMON_SOURCES
	src/data_structures.cpp
)
add_library(EGP_common ${EGP_COMMON_SOURCES})
target_include_directories(EGP_common
	PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include
)