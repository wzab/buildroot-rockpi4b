#!/bin/sh
v4l2-ctl -d /dev/v4l-subdev3 --set-edid=file=/opt/1080P30EDID.txt --fix-edid-checksums
v4l2-ctl -d /dev/v4l-subdev3 --set-dv-bt-timings index=10
media-ctl -r
media-ctl -l "28:0->1:0[1]"
media-ctl -l "1:2->6:0[1]"
media-ctl -l "6:1->12:0[1]"
media-ctl -V 28:0[fmt:UYVY/1920x1080]
media-ctl -V 1:0[fmt:UYVY8_1X16/1920x1080]
media-ctl -V "1:0[crop:(0,0)/1920x1080]"
media-ctl -V 1:2[fmt:UYVY8_1X16/1920x1080]
media-ctl -V "1:2[crop:(0,0)/1920x1080]"
media-ctl -V 6:0[fmt:YUYV8_2X8/1920x1080]
media-ctl -V "6:0[crop:(0,0)/1920x1080]"
media-ctl -V 6:1[fmt:JPEG_1X8/1920x1080]
v4l2-ctl --device /dev/video0 --set-fmt-video=width=1920,height=1080,pixelformat=YUYV


