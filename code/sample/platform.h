#ifndef PLATFORM_H 
#define PLATFORM_H


class SQLController {
public:
    virtual void runQuery(){;}
    
};

struct VideoData
{
    
};

class VideoAccess{
public:
     virtual VideoData getData(){return VideoData();}

};

class Platform {
VideoAccess   * _videoAccess;
SQLController * _sqlController;
public:
    Platform(VideoAccess* videoAccess, SQLController* sqlController) :
        _videoAccess(videoAccess),
        _sqlController(sqlController)
    {
        
    }
    void run()
    {
           _sqlController->runQuery();
           _videoAccess->getData();
    }
}; 

#endif