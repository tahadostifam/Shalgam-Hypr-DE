#!/usr/bin/bash
grim -c -o "$(hyprctl -j activeworkspace | jq -r '.monitor')" - | wl-copy 
notify-send "Screenshot copied to clipboard" -a "ss"
