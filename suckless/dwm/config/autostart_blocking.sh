#!/bin/bash

xset dpms 0 0 0
xset s off
xrandr
# xrandr --output HDMI1 --primary --auto --output DP2 --auto --left-of HDMI1 --output eDP1 --auto --left-of DP2
autorandr --change
/usr/bin/feh --no-fehbg --bg-fill --randomize -recursive ~/dotfiles/backgrounds/backgrounds/
