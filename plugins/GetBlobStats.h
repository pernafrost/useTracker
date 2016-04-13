/*----------------------------------------------------------------------------*/
/*    Copyright (C) 2015 Alexandre Campo                                      */
/*                                                                            */
/*    This file is part of USE Tracker.                                       */
/*                                                                            */
/*    USE Tracker is free software: you can redistribute it and/or modify     */
/*    it under the terms of the GNU General Public License as published by    */
/*    the Free Software Foundation, either version 3 of the License, or       */
/*    (at your option) any later version.                                     */
/*                                                                            */
/*    USE Tracker is distributed in the hope that it will be useful,          */
/*    but WITHOUT ANY WARRANTY; without even the implied warranty of          */
/*    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the           */
/*    GNU General Public License for more details.                            */
/*                                                                            */
/*    You should have received a copy of the GNU General Public License       */
/*    along with USE Tracker.  If not, see <http://www.gnu.org/licenses/>.    */
/*----------------------------------------------------------------------------*/

#ifndef GETBLOBSTATS_H
#define GETBLOBSTATS_H

#include "PipelinePlugin.h"

#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>


class GetBlobStats : public PipelinePlugin
{
public:

    int size = 1000;
    cv::Mat structuringElement;
    cv::Mat result;

    struct StatData
    {
	StatData()
	    {
		cov = 0;
		varx = 0;
		vary = 0;
		maxdist = 0;
	    }

	int cov;
	int varx;
	int vary;
	int maxdist;
    };


    bool exportImages = false;
    std::string outputImageFile;

    GetBlobStats();

    void Reset();
    void Apply();
    void LoadXML (cv::FileNode& fn);
    void SaveXML (cv::FileStorage& fs);
    void OutputHud (cv::Mat& hud);
    void SetMaxSize(int s);


};

#endif

