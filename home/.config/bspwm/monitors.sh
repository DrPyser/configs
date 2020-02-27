#! /usr/bin/env sh
xrandr --addmode DP-1 1920x1080
xrandr --output eDP-1 --auto --output DP-1 --mode 1920x1080 --left-of eDP-1 --output HDMI-2 --mode 1920x1080 --right-of eDP-1 
