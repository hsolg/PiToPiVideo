#!/bin/sh

gst-launch-1.0 videotestsrc ! x264enc ! mpegtsmux ! tcpserversink host=$SRC_IP port=2222
