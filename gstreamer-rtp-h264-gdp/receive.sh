#!/bin/sh

gst-launch-1.0 -v tcpclientsrc host=$SRC_IP port=2222 ! gdpdepay ! autovideosink sync=false
