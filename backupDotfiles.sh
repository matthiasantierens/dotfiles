#!/bin/bash

notify-send 'backing up the dotfiles'

cp -r /home/matthias/.config/{fish,i3,kitty,omf,polybar,picom} /home/matthias/Documents/git/dotfiles 
