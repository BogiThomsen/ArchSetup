#!/bin/bash
## Adapted from https://github.com/petvas/i3lock-blur, changed to not have lock icon.
BG=/tmp/screen.png
IMG=$HOME/.config/blurlock/img.png
RES=$(xrandr | grep 'current' | sed -E 's/.*current\s([0-9]+)\sx\s([0-9]+).*/\1x\2/')
 
ffmpeg -f x11grab -video_size $RES -y -i $DISPLAY -i $IMG -filter_complex "gblur=4:4,overlay=(main_w-overlay_w)/2:(main_h-overlay_h)/2" -vframes 1 $BG -loglevel quiet
i3lock -i $BG
rm $BG