#include <gmock/gmock.h>
using namespace testing;
TEST(SampleTest,InitialSampleTest){
    ASSERT_THAT(4+5,Eq(9));
}