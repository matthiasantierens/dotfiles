#!/bin/bash

File=/home/matthias/.config/polybar/dark-config

if grep -q "env:MONITOR:eDP-1-1" "$File"; then
  echo "changing the display conf for polybar"
  sed -i 's/env:MONITOR:eDP-1-1/env:MONITOR:eDP-1/g' /home/matthias/.config/polybar/dark-config
fi
