#!/bin/sh

raspivid -n -t 0 -w 1280 -h 720 -hf -ih -fps 20 -o - | nc -k -l 2222
