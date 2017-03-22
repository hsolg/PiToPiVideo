#/bin/sh

gst-launch-1.0 tcpclientsrc host=$SRC_IP port=2222 ! jpegdec ! videoconvert ! autovideosink
