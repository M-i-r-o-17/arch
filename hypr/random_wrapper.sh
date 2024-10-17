#!/bin/bash

name=$(shuf -i 1-372 -n 1)

wallpaper=$(find $HOME/Изображения/Wallpaper -type f -name "$name.*" -print)

echo "preload = $wallpaper" > $HOME/.config/hypr/hyprpaper.conf
echo "" >> $HOME/.config/hypr/hyprpaper.conf
echo "wallpaper = eDP-1,$wallpaper" >> $HOME/.config/hypr/hyprpaper.conf

killall hyprpaper
exec hyprpaper &
