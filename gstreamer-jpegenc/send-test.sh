#/bin/sh

gst-launch-1.0 videotestsrc ! videoconvert ! jpegenc ! tcpserversink host=$SRC_IP port=2222
