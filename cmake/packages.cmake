include(FetchContent)

FetchContent_Declare(
	googletest
	GIT_REPOSITORY
	https://github.com/google/googletest.git
	GIT_TAG
	v1.18.0
	GIT_SHALLOW
	TRUE
)
FetchContent_Declare(
	glm
	GIT_REPOSITORY
	https://github.com/g-truc/glm.git
	GIT_TAG
	1.0.3
	GIT_SHALLOW
	TRUE
)
FetchContent_Declare(
	glaze
	GIT_REPOSITORY
	https://github.com/stephenberry/glaze.git
	GIT_TAG
	v9.0.0
	GIT_SHALLOW
	TRUE
)

FetchContent_MakeAvailable(googletest glm glaze)