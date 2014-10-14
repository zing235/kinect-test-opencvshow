#include <iostream>
#include "OpenNI.h"
#include <iostream>
#include <opencv2/opencv.hpp>
using namespace std;
using namespace openni;
VideoStream mColorStream;
VideoFrameRef  mColorFrame;
Device mDevice;
void startcamera()
{
    OpenNI::initialize();
    // 2. Open Device
    mDevice.open( ANY_DEVICE );
//      VideoStream mColorStream;
    mColorStream.create( mDevice, SENSOR_COLOR );
    // 5. create OpenCV Window
    cv::namedWindow( "Color Image",  CV_WINDOW_AUTOSIZE );
    // 6. start
    mColorStream.start();
}

int main()
{
      startcamera();
      while( true )
      {
          mColorStream.readFrame( &mColorFrame );
          const cv::Mat mImageRGB(
                      mColorFrame.getHeight(), mColorFrame.getWidth(),
                      CV_8UC3, (void*)mColorFrame.getData() );
          cv::Mat cImageBGR;
          cv::cvtColor( mImageRGB, cImageBGR, CV_RGB2BGR );
          cv::imshow( "Color Image", cImageBGR );

        // 6a. check keyboard
        if( cv::waitKey( 1 ) == 'q' )
          break;
      }

      // 9. stop
      mColorStream.destroy();
      mDevice.close();
      OpenNI::shutdown();
      return 0;
}


