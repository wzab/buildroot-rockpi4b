#!/bin/sh
media-ctl -r
v4l2-ctl -d /dev/v4l-subdev3 -s pal
media-ctl -l "28:0->1:0[1]"
media-ctl -l "1:2->6:0[1]"
media-ctl -l "1:2->9:0[1]"
media-ctl -l "6:1->12:0[1]"
media-ctl -l "9:1->16:0[1]"
media-ctl -V 1:0[fmt:UYVY8_2X8/720x576]
media-ctl -V 1:2[fmt:YUYV8_2X8/720x576]
media-ctl -V 6:0[fmt:YUYV8_2X8/720x576]
media-ctl -V 6:1[fmt:JPEG_1X8/720x576]
media-ctl -V 9:0[fmt:YUYV8_2X8/720x576]
media-ctl -V 9:1[fmt:JPEG_1X8/720x576]

v4l2-ctl --device /dev/video0 --set-fmt-video=width=720,height=576,pixelformat=YUYV

v4l2-ctl --device /dev/video1 --set-fmt-video=width=720,height=576,pixelformat=YUYV

v4l2-ctl --device /dev/video0 --stream-mmap --stream-to=x.raw --stream-count=1

