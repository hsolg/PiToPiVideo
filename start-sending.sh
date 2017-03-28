#!/bin/sh

echo Send to $SRC_IP

until ./gstreamer-rtp-h264-gdp/send.sh; do
    echo Restarting in 3 seconds
    sleep 3
done
