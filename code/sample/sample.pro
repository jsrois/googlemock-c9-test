TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += main.cpp \
    sampletest.cpp \
    platform.h

GMOCK_PATH = $$(GMOCK_PATH)
GTEST_PATH = $${GMOCK_PATH}/gtest
LIBS += -L$${GMOCK_PATH}/lib -L$${GTEST_PATH}/lib -lgmock -lgtest -lpthread
INCLUDEPATH += $${GMOCK_PATH}/include $${GTEST_PATH}/include
QMAKE_RPATHDIR += $${GMOCK_PATH}/lib $${GTEST_PATH}/lib

QMAKE_CLEAN = *.o *.gcda *.gcno


QMAKE_CXXFLAGS += -g -Wall -fprofile-arcs -ftest-coverage -O0
QMAKE_LFLAGS += -g -Wall -fprofile-arcs -ftest-coverage  -O0

LIBS += \
    -lgcov