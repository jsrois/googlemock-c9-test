
#include "platform.h"
#include <gmock/gmock.h>
using namespace testing;

class VideoAccessMock : public VideoAccess
{
public: 
    MOCK_METHOD0(getData,VideoData());
};


class SampleTest : public Test
{
public:
    VideoAccessMock videoAccess;
    SQLController   sqlController;
};


TEST_F(SampleTest,InitialSampleTest){
    
    EXPECT_CALL(videoAccess,getData())
        .Times(2)
        .WillRepeatedly(Return(VideoData()));
    
    Platform platform(&videoAccess,&sqlController);
    platform.run();
    EXPECT_TRUE(true);
}