#!/bin/sh

mplayer -fps 200 -demuxer h264es ffmpeg://tcp://$SRC_HOST:2222
