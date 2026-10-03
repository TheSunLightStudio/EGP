include(FetchContent)

FetchContent_Declare(
  googletest
  GIT_REPOSITORY https://github.com/google/googletest
  GIT_TAG v1.18.0
  GIT_SHALLOW TRUE
)
FetchContent_Declare(
  glm
  GIT_REPOSITORY https://github.com/g-truc/glm
  GIT_TAG 1.0.3
  GIT_SHALLOW TRUE
)

FetchContent_MakeAvailable(googletest glm)