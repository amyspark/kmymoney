set(macdeployqt_SRCS
    main.cpp
    shared.cpp
    shared.h
    shared.mm
)

add_executable(macdeployqt
    ${macdeployqt_SRCS}
)
target_compile_options(macdeployqt
  PRIVATE
  -DQT_NO_DEPRECATED_WARNINGS
)

find_library(CoreFoundation_LIB CoreFoundation REQUIRED)
find_library(AppKit_LIB AppKit REQUIRED)

target_link_libraries(macdeployqt PRIVATE
    Qt::Core
    "${CoreFoundation_LIB}"
    "${AppKit_LIB}"
)

target_compile_features(macdeployqt PUBLIC cxx_std_17)
set_target_properties(macdeployqt PROPERTIES MACOSX_BUNDLE OFF)
