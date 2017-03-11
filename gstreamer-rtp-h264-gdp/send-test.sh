#!/bin/sh

gst-launch-0.10 -v videotestsrc ! gdppay ! tcpserversink host=$SRC_IP port=2222
