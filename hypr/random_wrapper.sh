#!/bin/bash


wrapper="$(shuf -i 1-372 -n 1).jpg"
rm $HOME/.config/hypr/hyprpaper.conf

echo "preload = $HOME/Images/$wrapper" > $HOME/.config/hypr/hyprpaper.conf
echo "" >> $HOME/.config/hypr/hyprpaper.conf
echo "wallpaper = eDP-1,$HOME/Images/$wrapper" >> $HOME/.config/hypr/hyprpaper.conf

killall hyprpaper
exec hyprpaper &
