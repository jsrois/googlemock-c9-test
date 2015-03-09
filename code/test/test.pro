CONFIG -= qt
TARGET = test
CONFIG = testcase

SOURCES += main.cpp platform_test.cpp


SOURCES += $${PLATFORM_SOURCE_PATH}/*.cpp
HEADERS += $${PLATFORM_SOURCE_PATH}/*.h
INCLUDEPATH +=  $${PLATFORM_SOURCE_PATH}

# GoogleTest/GoogleMock
include($$DEPS_FILE)
INCLUDEPATH += $${GMOCK_PATH}/include $${GTEST_PATH}/include
LIBS        += -L$${GMOCK_PATH}/lib -L$${GTEST_PATH}/lib -lgtest -lgmock

QMAKE_RPATHDIR += $${GMOCK_PATH}/lib $${GTEST_PATH}/lib
