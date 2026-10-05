file(GLOB_RECURSE EGP_BACKEND_SOURCES CONFIGURE_DEPENDS core/src/*.cpp)
file(GLOB_RECURSE EGP_BACKEND_HEADERS
	CONFIGURE_DEPENDS
	core/src/*.h
	core/src/*.hpp
)

# 后端是独立进程，与 app 各跑各的
add_executable(backend ${EGP_BACKEND_SOURCES} ${EGP_BACKEND_HEADERS})
target_link_libraries(backend PRIVATE glaze::glaze)