GMOCK_PATH = $$(GMOCK_PATH)
GTEST_PATH = $$(GTEST_PATH)
isEmpty(GMOCK_PATH){
error(You must set GMOCK_PATH environment variable to your GoogleMock location)
}

isEmpty(GTEST_PATH){
error(You must set GTEST_PATH environment variable to your GoogleTest location)
}