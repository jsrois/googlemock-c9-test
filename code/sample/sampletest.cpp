class Bar {
public: 
virtual void crap(){;}
    
};


class Foo{
public:
    
    virtual bool shit(Bar&bar){
        bar.crap();
        return true;
        
    }
};




#include <gmock/gmock.h>
using namespace testing;

class BarMock : public Bar {
  public:
  MOCK_METHOD0(crap,void());
};

class SampleTest : public Test {
public: 
    Foo foo;
};

TEST_F(SampleTest,InitialSampleTest){
    BarMock bar;
    EXPECT_CALL(bar,crap()).Times(1);
    foo.shit(bar);
    EXPECT_TRUE(true);
}