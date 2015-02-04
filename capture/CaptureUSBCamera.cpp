
#include "CaptureUSBCamera.h"
//#include "cap_v4l.h"

#include <iostream>
#include <chrono>
#include <thread>

using namespace std;
using namespace cv;

CaptureUSBCamera::CaptureUSBCamera(int device) : Capture()
{
    Open(device);
    type = USB_CAMERA;
}

CaptureUSBCamera::CaptureUSBCamera(FileNode& fn) : Capture()
{
    LoadXML(fn);
    Open(device);
    type = USB_CAMERA;
}

CaptureUSBCamera::~CaptureUSBCamera()
{

}

bool CaptureUSBCamera::Open (int device)
{
//    CvCaptureCAM_V4L_CPP* cap = new CvCaptureCAM_V4L_CPP(1);

    this->device = device;
    source.open(device);

    // Check if the camera was opened
    if(!source.isOpened())
    {
	std::cerr << "Could not create capture" << std::endl;
	return false;
    }

    // Get the properties from the camera
    width = source.get(CV_CAP_PROP_FRAME_WIDTH);
    height = source.get(CV_CAP_PROP_FRAME_HEIGHT);
    fps = source.get(CV_CAP_PROP_FPS);

    cout << "detected w/h/fps " << width << " " << height << " " << fps << std::endl;

    time = GetTime();

    source >> frame;

    return (!frame.empty());
}

void CaptureUSBCamera::Close ()
{

}

bool CaptureUSBCamera::GetNextFrame (bool blocking)
{
    source >> frame;

    GetTime();
    frameNumber++;

    return !frame.empty();
}

bool CaptureUSBCamera::GetFrame (double time)
{
    while (GetTime() < time) this_thread::sleep_for(chrono::milliseconds(10)); 
    source >> frame;

    frameNumber++;

    return !frame.empty();
}

long CaptureUSBCamera::GetFrameNumber ()
{
    return frameNumber;
//    return source.get(CV_CAP_PROP_POS_FRAMES);
}

long CaptureUSBCamera::GetFrameCount ()
{
    return 1;
}

void CaptureUSBCamera::SaveXML(FileStorage& fs)
{
    fs << "Source" << "{" << "Type";
    fs << "USBcamera" << "Device" << device;
    fs << "}";
}

void CaptureUSBCamera::LoadXML(FileNode& fn)
{
    if (!fn.empty())
    {
	device = (int)fn["Device"];
    }
}
