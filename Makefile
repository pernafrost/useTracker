#------------------------------------------------------------------------------#
# This makefile was generated by 'cbp2make' tool rev.147                       #
#------------------------------------------------------------------------------#


WORKDIR = `pwd`

CC = gcc
CXX = g++
AR = ar
LD = g++
WINDRES = windres

INC = 
CFLAGS = -std=c++11 -Wall `wx-config --cflags all` `pkg-config --cflags opencv` -I ./ -I ./plugins -I./capture -I./dialogs
RESINC = 
LIBDIR = 
LIB = 
LDFLAGS = `wx-config --libs all --gl-libs` -lGL -lGLU -lglut -lpthread `pkg-config --libs opencv` `pkg-config --libs libavcodec libavfilter libavformat libswscale libavutil` -ldl -lva -lbz2 -lz -lm -lpng -lx264 -lboost_program_options

INC_DEBUG = $(INC)
CFLAGS_DEBUG = $(CFLAGS) -pg -g
RESINC_DEBUG = $(RESINC)
RCFLAGS_DEBUG = $(RCFLAGS)
LIBDIR_DEBUG = $(LIBDIR)
LIB_DEBUG = $(LIB)
LDFLAGS_DEBUG =  -pg $(LDFLAGS)
OBJDIR_DEBUG = obj/Debug
DEP_DEBUG = 
OUT_DEBUG = bin/Debug/useTracker

INC_RELEASE = $(INC)
CFLAGS_RELEASE = $(CFLAGS) -march=corei7-avx -fexpensive-optimizations -O3 -mfpmath=sse -pipe -fforce-addr -frerun-cse-after-loop -frerun-loop-opt -falign-functions=4 -maccumulate-outgoing-args -ffast-math -fprefetch-loop-arrays -pthread
RESINC_RELEASE = $(RESINC)
RCFLAGS_RELEASE = $(RCFLAGS)
LIBDIR_RELEASE = $(LIBDIR)
LIB_RELEASE = $(LIB)
LDFLAGS_RELEASE =  -s $(LDFLAGS)
OBJDIR_RELEASE = obj/Release
DEP_RELEASE = 
OUT_RELEASE = bin/Release/useTracker

OBJ_DEBUG = $(OBJDIR_DEBUG)/plugins/ColorSegmentation.o $(OBJDIR_DEBUG)/plugins/MovingAverage.o $(OBJDIR_DEBUG)/plugins/GetBlobsAngles.o $(OBJDIR_DEBUG)/plugins/FrameDifference.o $(OBJDIR_DEBUG)/plugins/ExtractSimpleTags.o $(OBJDIR_DEBUG)/plugins/ExtractMotion.o $(OBJDIR_DEBUG)/plugins/ExtractBlobs.o $(OBJDIR_DEBUG)/plugins/Erosion.o $(OBJDIR_DEBUG)/plugins/Dilation.o $(OBJDIR_DEBUG)/plugins/RecordPixels.o $(OBJDIR_DEBUG)/dialogs/DialogTracker.o $(OBJDIR_DEBUG)/dialogs/DialogSafeErosion.o $(OBJDIR_DEBUG)/dialogs/DialogRecordVideo.o $(OBJDIR_DEBUG)/dialogs/DialogRecordPixels.o $(OBJDIR_DEBUG)/plugins/Tracker.o $(OBJDIR_DEBUG)/plugins/SafeErosion.o $(OBJDIR_DEBUG)/plugins/RecordVideo.o $(OBJDIR_DEBUG)/capture/CaptureAVTCamera.o $(OBJDIR_DEBUG)/Utils.o $(OBJDIR_DEBUG)/Pipeline.o $(OBJDIR_DEBUG)/Parameters.o $(OBJDIR_DEBUG)/MainFrame.o $(OBJDIR_DEBUG)/ImageProcessingEngine.o $(OBJDIR_DEBUG)/Capture.o $(OBJDIR_DEBUG)/Background.o $(OBJDIR_DEBUG)/dialogs/DialogDilation.o $(OBJDIR_DEBUG)/dialogs/DialogMovingAverage.o $(OBJDIR_DEBUG)/dialogs/DialogExtractMotion.o $(OBJDIR_DEBUG)/dialogs/DialogExtractBlobs.o $(OBJDIR_DEBUG)/dialogs/DialogErosion.o $(OBJDIR_DEBUG)/App.o $(OBJDIR_DEBUG)/dialogs/DialogColorSegmentation.o $(OBJDIR_DEBUG)/capture/CaptureVideo.o $(OBJDIR_DEBUG)/capture/CaptureUSBCamera.o $(OBJDIR_DEBUG)/capture/CaptureImage.o

OBJ_RELEASE = $(OBJDIR_RELEASE)/plugins/ColorSegmentation.o $(OBJDIR_RELEASE)/plugins/MovingAverage.o $(OBJDIR_RELEASE)/plugins/GetBlobsAngles.o $(OBJDIR_RELEASE)/plugins/FrameDifference.o $(OBJDIR_RELEASE)/plugins/ExtractSimpleTags.o $(OBJDIR_RELEASE)/plugins/ExtractMotion.o $(OBJDIR_RELEASE)/plugins/ExtractBlobs.o $(OBJDIR_RELEASE)/plugins/Erosion.o $(OBJDIR_RELEASE)/plugins/Dilation.o $(OBJDIR_RELEASE)/plugins/RecordPixels.o $(OBJDIR_RELEASE)/dialogs/DialogTracker.o $(OBJDIR_RELEASE)/dialogs/DialogSafeErosion.o $(OBJDIR_RELEASE)/dialogs/DialogRecordVideo.o $(OBJDIR_RELEASE)/dialogs/DialogRecordPixels.o $(OBJDIR_RELEASE)/plugins/Tracker.o $(OBJDIR_RELEASE)/plugins/SafeErosion.o $(OBJDIR_RELEASE)/plugins/RecordVideo.o $(OBJDIR_RELEASE)/capture/CaptureAVTCamera.o $(OBJDIR_RELEASE)/Utils.o $(OBJDIR_RELEASE)/Pipeline.o $(OBJDIR_RELEASE)/Parameters.o $(OBJDIR_RELEASE)/MainFrame.o $(OBJDIR_RELEASE)/ImageProcessingEngine.o $(OBJDIR_RELEASE)/Capture.o $(OBJDIR_RELEASE)/Background.o $(OBJDIR_RELEASE)/dialogs/DialogDilation.o $(OBJDIR_RELEASE)/dialogs/DialogMovingAverage.o $(OBJDIR_RELEASE)/dialogs/DialogExtractMotion.o $(OBJDIR_RELEASE)/dialogs/DialogExtractBlobs.o $(OBJDIR_RELEASE)/dialogs/DialogErosion.o $(OBJDIR_RELEASE)/App.o $(OBJDIR_RELEASE)/dialogs/DialogColorSegmentation.o $(OBJDIR_RELEASE)/capture/CaptureVideo.o $(OBJDIR_RELEASE)/capture/CaptureUSBCamera.o $(OBJDIR_RELEASE)/capture/CaptureImage.o

all: debug release

clean: clean_debug clean_release

before_debug: 
	test -d bin/Debug || mkdir -p bin/Debug
	test -d $(OBJDIR_DEBUG)/plugins || mkdir -p $(OBJDIR_DEBUG)/plugins
	test -d $(OBJDIR_DEBUG)/dialogs || mkdir -p $(OBJDIR_DEBUG)/dialogs
	test -d $(OBJDIR_DEBUG)/capture || mkdir -p $(OBJDIR_DEBUG)/capture
	test -d $(OBJDIR_DEBUG) || mkdir -p $(OBJDIR_DEBUG)

after_debug: 

debug: before_debug out_debug after_debug

out_debug: before_debug $(OBJ_DEBUG) $(DEP_DEBUG)
	$(LD) $(LIBDIR_DEBUG) -o $(OUT_DEBUG) $(OBJ_DEBUG)  $(LDFLAGS_DEBUG) $(LIB_DEBUG)

$(OBJDIR_DEBUG)/plugins/ColorSegmentation.o: plugins/ColorSegmentation.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c plugins/ColorSegmentation.cpp -o $(OBJDIR_DEBUG)/plugins/ColorSegmentation.o

$(OBJDIR_DEBUG)/plugins/MovingAverage.o: plugins/MovingAverage.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c plugins/MovingAverage.cpp -o $(OBJDIR_DEBUG)/plugins/MovingAverage.o

$(OBJDIR_DEBUG)/plugins/GetBlobsAngles.o: plugins/GetBlobsAngles.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c plugins/GetBlobsAngles.cpp -o $(OBJDIR_DEBUG)/plugins/GetBlobsAngles.o

$(OBJDIR_DEBUG)/plugins/FrameDifference.o: plugins/FrameDifference.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c plugins/FrameDifference.cpp -o $(OBJDIR_DEBUG)/plugins/FrameDifference.o

$(OBJDIR_DEBUG)/plugins/ExtractSimpleTags.o: plugins/ExtractSimpleTags.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c plugins/ExtractSimpleTags.cpp -o $(OBJDIR_DEBUG)/plugins/ExtractSimpleTags.o

$(OBJDIR_DEBUG)/plugins/ExtractMotion.o: plugins/ExtractMotion.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c plugins/ExtractMotion.cpp -o $(OBJDIR_DEBUG)/plugins/ExtractMotion.o

$(OBJDIR_DEBUG)/plugins/ExtractBlobs.o: plugins/ExtractBlobs.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c plugins/ExtractBlobs.cpp -o $(OBJDIR_DEBUG)/plugins/ExtractBlobs.o

$(OBJDIR_DEBUG)/plugins/Erosion.o: plugins/Erosion.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c plugins/Erosion.cpp -o $(OBJDIR_DEBUG)/plugins/Erosion.o

$(OBJDIR_DEBUG)/plugins/Dilation.o: plugins/Dilation.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c plugins/Dilation.cpp -o $(OBJDIR_DEBUG)/plugins/Dilation.o

$(OBJDIR_DEBUG)/plugins/RecordPixels.o: plugins/RecordPixels.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c plugins/RecordPixels.cpp -o $(OBJDIR_DEBUG)/plugins/RecordPixels.o

$(OBJDIR_DEBUG)/dialogs/DialogTracker.o: dialogs/DialogTracker.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c dialogs/DialogTracker.cpp -o $(OBJDIR_DEBUG)/dialogs/DialogTracker.o

$(OBJDIR_DEBUG)/dialogs/DialogSafeErosion.o: dialogs/DialogSafeErosion.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c dialogs/DialogSafeErosion.cpp -o $(OBJDIR_DEBUG)/dialogs/DialogSafeErosion.o

$(OBJDIR_DEBUG)/dialogs/DialogRecordVideo.o: dialogs/DialogRecordVideo.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c dialogs/DialogRecordVideo.cpp -o $(OBJDIR_DEBUG)/dialogs/DialogRecordVideo.o

$(OBJDIR_DEBUG)/dialogs/DialogRecordPixels.o: dialogs/DialogRecordPixels.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c dialogs/DialogRecordPixels.cpp -o $(OBJDIR_DEBUG)/dialogs/DialogRecordPixels.o

$(OBJDIR_DEBUG)/plugins/Tracker.o: plugins/Tracker.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c plugins/Tracker.cpp -o $(OBJDIR_DEBUG)/plugins/Tracker.o

$(OBJDIR_DEBUG)/plugins/SafeErosion.o: plugins/SafeErosion.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c plugins/SafeErosion.cpp -o $(OBJDIR_DEBUG)/plugins/SafeErosion.o

$(OBJDIR_DEBUG)/plugins/RecordVideo.o: plugins/RecordVideo.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c plugins/RecordVideo.cpp -o $(OBJDIR_DEBUG)/plugins/RecordVideo.o

$(OBJDIR_DEBUG)/capture/CaptureAVTCamera.o: capture/CaptureAVTCamera.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c capture/CaptureAVTCamera.cpp -o $(OBJDIR_DEBUG)/capture/CaptureAVTCamera.o

$(OBJDIR_DEBUG)/Utils.o: Utils.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c Utils.cpp -o $(OBJDIR_DEBUG)/Utils.o

$(OBJDIR_DEBUG)/Pipeline.o: Pipeline.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c Pipeline.cpp -o $(OBJDIR_DEBUG)/Pipeline.o

$(OBJDIR_DEBUG)/Parameters.o: Parameters.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c Parameters.cpp -o $(OBJDIR_DEBUG)/Parameters.o

$(OBJDIR_DEBUG)/MainFrame.o: MainFrame.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c MainFrame.cpp -o $(OBJDIR_DEBUG)/MainFrame.o

$(OBJDIR_DEBUG)/ImageProcessingEngine.o: ImageProcessingEngine.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c ImageProcessingEngine.cpp -o $(OBJDIR_DEBUG)/ImageProcessingEngine.o

$(OBJDIR_DEBUG)/Capture.o: Capture.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c Capture.cpp -o $(OBJDIR_DEBUG)/Capture.o

$(OBJDIR_DEBUG)/Background.o: Background.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c Background.cpp -o $(OBJDIR_DEBUG)/Background.o

$(OBJDIR_DEBUG)/dialogs/DialogDilation.o: dialogs/DialogDilation.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c dialogs/DialogDilation.cpp -o $(OBJDIR_DEBUG)/dialogs/DialogDilation.o

$(OBJDIR_DEBUG)/dialogs/DialogMovingAverage.o: dialogs/DialogMovingAverage.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c dialogs/DialogMovingAverage.cpp -o $(OBJDIR_DEBUG)/dialogs/DialogMovingAverage.o

$(OBJDIR_DEBUG)/dialogs/DialogExtractMotion.o: dialogs/DialogExtractMotion.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c dialogs/DialogExtractMotion.cpp -o $(OBJDIR_DEBUG)/dialogs/DialogExtractMotion.o

$(OBJDIR_DEBUG)/dialogs/DialogExtractBlobs.o: dialogs/DialogExtractBlobs.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c dialogs/DialogExtractBlobs.cpp -o $(OBJDIR_DEBUG)/dialogs/DialogExtractBlobs.o

$(OBJDIR_DEBUG)/dialogs/DialogErosion.o: dialogs/DialogErosion.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c dialogs/DialogErosion.cpp -o $(OBJDIR_DEBUG)/dialogs/DialogErosion.o

$(OBJDIR_DEBUG)/App.o: App.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c App.cpp -o $(OBJDIR_DEBUG)/App.o

$(OBJDIR_DEBUG)/dialogs/DialogColorSegmentation.o: dialogs/DialogColorSegmentation.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c dialogs/DialogColorSegmentation.cpp -o $(OBJDIR_DEBUG)/dialogs/DialogColorSegmentation.o

$(OBJDIR_DEBUG)/capture/CaptureVideo.o: capture/CaptureVideo.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c capture/CaptureVideo.cpp -o $(OBJDIR_DEBUG)/capture/CaptureVideo.o

$(OBJDIR_DEBUG)/capture/CaptureUSBCamera.o: capture/CaptureUSBCamera.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c capture/CaptureUSBCamera.cpp -o $(OBJDIR_DEBUG)/capture/CaptureUSBCamera.o

$(OBJDIR_DEBUG)/capture/CaptureImage.o: capture/CaptureImage.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c capture/CaptureImage.cpp -o $(OBJDIR_DEBUG)/capture/CaptureImage.o

clean_debug: 
	rm -f $(OBJ_DEBUG) $(OUT_DEBUG)
	rm -rf bin/Debug
	rm -rf $(OBJDIR_DEBUG)/plugins
	rm -rf $(OBJDIR_DEBUG)/dialogs
	rm -rf $(OBJDIR_DEBUG)/capture
	rm -rf $(OBJDIR_DEBUG)

before_release: 
	test -d bin/Release || mkdir -p bin/Release
	test -d $(OBJDIR_RELEASE)/plugins || mkdir -p $(OBJDIR_RELEASE)/plugins
	test -d $(OBJDIR_RELEASE)/dialogs || mkdir -p $(OBJDIR_RELEASE)/dialogs
	test -d $(OBJDIR_RELEASE)/capture || mkdir -p $(OBJDIR_RELEASE)/capture
	test -d $(OBJDIR_RELEASE) || mkdir -p $(OBJDIR_RELEASE)

after_release: 

release: before_release out_release after_release

out_release: before_release $(OBJ_RELEASE) $(DEP_RELEASE)
	$(LD) $(LIBDIR_RELEASE) -o $(OUT_RELEASE) $(OBJ_RELEASE)  $(LDFLAGS_RELEASE) $(LIB_RELEASE)

$(OBJDIR_RELEASE)/plugins/ColorSegmentation.o: plugins/ColorSegmentation.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c plugins/ColorSegmentation.cpp -o $(OBJDIR_RELEASE)/plugins/ColorSegmentation.o

$(OBJDIR_RELEASE)/plugins/MovingAverage.o: plugins/MovingAverage.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c plugins/MovingAverage.cpp -o $(OBJDIR_RELEASE)/plugins/MovingAverage.o

$(OBJDIR_RELEASE)/plugins/GetBlobsAngles.o: plugins/GetBlobsAngles.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c plugins/GetBlobsAngles.cpp -o $(OBJDIR_RELEASE)/plugins/GetBlobsAngles.o

$(OBJDIR_RELEASE)/plugins/FrameDifference.o: plugins/FrameDifference.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c plugins/FrameDifference.cpp -o $(OBJDIR_RELEASE)/plugins/FrameDifference.o

$(OBJDIR_RELEASE)/plugins/ExtractSimpleTags.o: plugins/ExtractSimpleTags.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c plugins/ExtractSimpleTags.cpp -o $(OBJDIR_RELEASE)/plugins/ExtractSimpleTags.o

$(OBJDIR_RELEASE)/plugins/ExtractMotion.o: plugins/ExtractMotion.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c plugins/ExtractMotion.cpp -o $(OBJDIR_RELEASE)/plugins/ExtractMotion.o

$(OBJDIR_RELEASE)/plugins/ExtractBlobs.o: plugins/ExtractBlobs.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c plugins/ExtractBlobs.cpp -o $(OBJDIR_RELEASE)/plugins/ExtractBlobs.o

$(OBJDIR_RELEASE)/plugins/Erosion.o: plugins/Erosion.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c plugins/Erosion.cpp -o $(OBJDIR_RELEASE)/plugins/Erosion.o

$(OBJDIR_RELEASE)/plugins/Dilation.o: plugins/Dilation.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c plugins/Dilation.cpp -o $(OBJDIR_RELEASE)/plugins/Dilation.o

$(OBJDIR_RELEASE)/plugins/RecordPixels.o: plugins/RecordPixels.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c plugins/RecordPixels.cpp -o $(OBJDIR_RELEASE)/plugins/RecordPixels.o

$(OBJDIR_RELEASE)/dialogs/DialogTracker.o: dialogs/DialogTracker.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c dialogs/DialogTracker.cpp -o $(OBJDIR_RELEASE)/dialogs/DialogTracker.o

$(OBJDIR_RELEASE)/dialogs/DialogSafeErosion.o: dialogs/DialogSafeErosion.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c dialogs/DialogSafeErosion.cpp -o $(OBJDIR_RELEASE)/dialogs/DialogSafeErosion.o

$(OBJDIR_RELEASE)/dialogs/DialogRecordVideo.o: dialogs/DialogRecordVideo.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c dialogs/DialogRecordVideo.cpp -o $(OBJDIR_RELEASE)/dialogs/DialogRecordVideo.o

$(OBJDIR_RELEASE)/dialogs/DialogRecordPixels.o: dialogs/DialogRecordPixels.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c dialogs/DialogRecordPixels.cpp -o $(OBJDIR_RELEASE)/dialogs/DialogRecordPixels.o

$(OBJDIR_RELEASE)/plugins/Tracker.o: plugins/Tracker.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c plugins/Tracker.cpp -o $(OBJDIR_RELEASE)/plugins/Tracker.o

$(OBJDIR_RELEASE)/plugins/SafeErosion.o: plugins/SafeErosion.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c plugins/SafeErosion.cpp -o $(OBJDIR_RELEASE)/plugins/SafeErosion.o

$(OBJDIR_RELEASE)/plugins/RecordVideo.o: plugins/RecordVideo.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c plugins/RecordVideo.cpp -o $(OBJDIR_RELEASE)/plugins/RecordVideo.o

$(OBJDIR_RELEASE)/capture/CaptureAVTCamera.o: capture/CaptureAVTCamera.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c capture/CaptureAVTCamera.cpp -o $(OBJDIR_RELEASE)/capture/CaptureAVTCamera.o

$(OBJDIR_RELEASE)/Utils.o: Utils.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c Utils.cpp -o $(OBJDIR_RELEASE)/Utils.o

$(OBJDIR_RELEASE)/Pipeline.o: Pipeline.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c Pipeline.cpp -o $(OBJDIR_RELEASE)/Pipeline.o

$(OBJDIR_RELEASE)/Parameters.o: Parameters.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c Parameters.cpp -o $(OBJDIR_RELEASE)/Parameters.o

$(OBJDIR_RELEASE)/MainFrame.o: MainFrame.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c MainFrame.cpp -o $(OBJDIR_RELEASE)/MainFrame.o

$(OBJDIR_RELEASE)/ImageProcessingEngine.o: ImageProcessingEngine.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c ImageProcessingEngine.cpp -o $(OBJDIR_RELEASE)/ImageProcessingEngine.o

$(OBJDIR_RELEASE)/Capture.o: Capture.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c Capture.cpp -o $(OBJDIR_RELEASE)/Capture.o

$(OBJDIR_RELEASE)/Background.o: Background.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c Background.cpp -o $(OBJDIR_RELEASE)/Background.o

$(OBJDIR_RELEASE)/dialogs/DialogDilation.o: dialogs/DialogDilation.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c dialogs/DialogDilation.cpp -o $(OBJDIR_RELEASE)/dialogs/DialogDilation.o

$(OBJDIR_RELEASE)/dialogs/DialogMovingAverage.o: dialogs/DialogMovingAverage.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c dialogs/DialogMovingAverage.cpp -o $(OBJDIR_RELEASE)/dialogs/DialogMovingAverage.o

$(OBJDIR_RELEASE)/dialogs/DialogExtractMotion.o: dialogs/DialogExtractMotion.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c dialogs/DialogExtractMotion.cpp -o $(OBJDIR_RELEASE)/dialogs/DialogExtractMotion.o

$(OBJDIR_RELEASE)/dialogs/DialogExtractBlobs.o: dialogs/DialogExtractBlobs.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c dialogs/DialogExtractBlobs.cpp -o $(OBJDIR_RELEASE)/dialogs/DialogExtractBlobs.o

$(OBJDIR_RELEASE)/dialogs/DialogErosion.o: dialogs/DialogErosion.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c dialogs/DialogErosion.cpp -o $(OBJDIR_RELEASE)/dialogs/DialogErosion.o

$(OBJDIR_RELEASE)/App.o: App.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c App.cpp -o $(OBJDIR_RELEASE)/App.o

$(OBJDIR_RELEASE)/dialogs/DialogColorSegmentation.o: dialogs/DialogColorSegmentation.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c dialogs/DialogColorSegmentation.cpp -o $(OBJDIR_RELEASE)/dialogs/DialogColorSegmentation.o

$(OBJDIR_RELEASE)/capture/CaptureVideo.o: capture/CaptureVideo.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c capture/CaptureVideo.cpp -o $(OBJDIR_RELEASE)/capture/CaptureVideo.o

$(OBJDIR_RELEASE)/capture/CaptureUSBCamera.o: capture/CaptureUSBCamera.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c capture/CaptureUSBCamera.cpp -o $(OBJDIR_RELEASE)/capture/CaptureUSBCamera.o

$(OBJDIR_RELEASE)/capture/CaptureImage.o: capture/CaptureImage.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c capture/CaptureImage.cpp -o $(OBJDIR_RELEASE)/capture/CaptureImage.o

clean_release: 
	rm -f $(OBJ_RELEASE) $(OUT_RELEASE)
	rm -rf bin/Release
	rm -rf $(OBJDIR_RELEASE)/plugins
	rm -rf $(OBJDIR_RELEASE)/dialogs
	rm -rf $(OBJDIR_RELEASE)/capture
	rm -rf $(OBJDIR_RELEASE)

.PHONY: before_debug after_debug clean_debug before_release after_release clean_release

