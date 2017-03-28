#!/bin/sh

# Works in Raspbian and Ubuntu.
# Use ximagesink with X and fbdevsink without X.
gst-launch-1.0 -v tcpclientsrc host=$SRC_IP port=2222 ! gdpdepay ! rtph264depay ! avdec_h264 ! videoconvert ! ximagesink
