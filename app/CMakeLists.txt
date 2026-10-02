find_package(Qt6 REQUIRED COMPONENTS Core Widgets Quick Qml QuickControls2 QuickLayouts)
qt_standard_project_setup(REQUIRES 6.12)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

add_executable(app src/main.cpp)
qt_add_qml_module(app
  URI EGP
  VERSION 1.0
  QML_FILES
  ui/Main.qml
  RESOURCES
  ui/javascript/utils.js
)
target_include_directories(app PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/src/ui/include)
target_link_libraries(app
  PRIVATE
  Qt6::Core
  Qt6::Qml
  Qt6::Quick
  Qt6::QuickControls2
  Qt6::QuickLayouts
)

# Deploy Qt DLLs on Windows
if(WIN32)
  get_target_property(qmake_executable Qt6::qmake IMPORTED_LOCATION)
  get_filename_component(qt_bin_dir "${qmake_executable}" DIRECTORY)

  add_custom_command(TARGET app POST_BUILD
    COMMAND "${qt_bin_dir}/windeployqt.exe"
    --no-translations
    --no-compiler-runtime
    --qmldir "${CMAKE_CURRENT_SOURCE_DIR}/ui"
    "$<TARGET_FILE:app>"
    COMMENT "Deploying Qt DLLs for app"
    VERBATIM
  )
endif()