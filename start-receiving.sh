#!/bin/sh

echo Receive from $SRC_IP

until ./gstreamer-rtp-h264-gdp/receive.sh; do
    echo Restarting in 3 seconds
    sleep 3
done
