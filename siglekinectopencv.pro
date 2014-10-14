#-------------------------------------------------
#
# Project created by QtCreator 2014-10-14T19:08:56
#
#-------------------------------------------------
//openni
INCLUDEPATH+="C:/Program Files (x86)/OpenNI2/Include"
LIBS+="C:/Program Files (x86)/OpenNI2/Lib/OpenNI2.lib"

//opencv
INCLUDEPATH += "D:/Program Files/opencv/build/include"

win32:CONFIG(debug, debug|release): {
LIBS += "D:/Program Files/opencv/build/x86/vc10/lib/opencv_core249d.lib"
LIBS += "D:/Program Files/opencv/build/x86/vc10/lib/opencv_imgproc249d.lib"
LIBS += "D:/Program Files/opencv/build/x86/vc10/lib/opencv_highgui249d.lib"
LIBS += "D:/Program Files/opencv/build/x86/vc10/lib/opencv_ml249d.lib"
LIBS += "D:/Program Files/opencv/build/x86/vc10/lib/opencv_video249d.lib"
LIBS += "D:/Program Files/opencv/build/x86/vc10/lib/opencv_features2d249d.lib"
LIBS += "D:/Program Files/opencv/build/x86/vc10/lib/opencv_calib3d249d.lib"
LIBS += "D:/Program Files/opencv/build/x86/vc10/lib/opencv_objdetect249d.lib"
LIBS += "D:/Program Files/opencv/build/x86/vc10/lib/opencv_contrib249d.lib"
LIBS += "D:/Program Files/opencv/build/x86/vc10/lib/opencv_legacy249d.lib"
LIBS += "D:/Program Files/opencv/build/x86/vc10/lib/opencv_flann249d.lib"

} else:win32:CONFIG(release, debug|release): {
LIBS += "D:/Program Files/opencv/build/x86/vc10/lib/opencv_core249.lib"
LIBS += "D:/Program Files/opencv/build/x86/vc10/lib/opencv_imgproc249.lib"
LIBS += "D:/Program Files/opencv/build/x86/vc10/lib/opencv_highgui249.lib"
LIBS += "D:/Program Files/opencv/build/x86/vc10/lib/opencv_ml249.lib"
LIBS += "D:/Program Files/opencv/build/x86/vc10/lib/opencv_video249.lib"
LIBS += "D:/Program Files/opencv/build/x86/vc10/lib/opencv_features2d249.lib"
LIBS += "D:/Program Files/opencv/build/x86/vc10/lib/opencv_calib3d249.lib"
LIBS += "D:/Program Files/opencv/build/x86/vc10/lib/opencv_objdetect249.lib"
LIBS += "D:/Program Files/opencv/build/x86/vc10/lib/opencv_contrib249.lib"
LIBS += "D:/Program Files/opencv/build/x86/vc10/lib/opencv_legacy249.lib"
LIBS += "D:/Program Files/opencv/build/x86/vc10/lib/opencv_flann249.lib"
}


QT       += core

QT       -= gui

TARGET = siglekinectopencv
CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app


SOURCES += main.cpp
