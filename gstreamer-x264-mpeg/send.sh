#!/bin/sh

raspivid -n -t 0 -w 640 -h 480 -hf -ih -fps 10 -o - | gst-launch-1.0 fdsrc ! x264enc ! mpegtsmux ! tcpserversink host=$SRC_IP port=2222
