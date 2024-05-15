#!/bin/bash

# Set keyboard layout and options
setxkbmap -layout us,ara -option grp:sclk_toggle
setxkbmap -option caps:swapescape

# Launch sxhkd in the background
sxhkd &

if true; then
  feh --bg-fill ~/themes/void-black-4k.png
fi

# Launch dwm
dwm
