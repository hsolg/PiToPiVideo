#!/bin/sh

gst-launch-1.0 -v videotestsrc ! gdppay ! tcpserversink host=$SRC_IP port=2222
