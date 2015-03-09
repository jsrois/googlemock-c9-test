#include <platform.h>
#include <gtest/gtest.h>
using namespace testing;

TEST(PlatformTest,BasicFunctionWorksOK){
    Foo foo;
    ASSERT_EQ(foo.bar(10),20);
}