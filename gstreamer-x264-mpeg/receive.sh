#!/bin/sh

gst-launch-1.0 tcpclientsrc host=$SRC_IP port=2222 ! tsdemux ! h264parse ! avdec_h264 ! autovideosink
