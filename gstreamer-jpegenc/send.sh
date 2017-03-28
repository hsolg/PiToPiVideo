#/bin/sh

raspivid -n -t 0 -w 640 -h 480 -hf -ih -fps 10 -o - | gst-launch-1.0 -v fdsrc ! videoconvert ! jpegenc ! tcpserversink host=$SRC_IP port=2222
