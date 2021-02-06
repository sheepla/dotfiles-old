#!/usr/bin/env bash

# Reload ~/.Xresources for urxvt and other
[ -f "$HOME/.Xresources " ] && xrdb "$HOME/.Xresources"

# Set display layout and resolution (Using ArandR)
[ -f "$HOME/.screenlayout/layout.sh" ] && source "$HOME/.screenlayout/layout.sh"

# Launch composite manger
if command -v picom &>/dev/null && ! pgrep picom
then
    picom_conf="$HOME/.config/picom/picom.conf" 

    if [ -f $picom_conf ]
    then
        picom --config $picom_conf --daemon &
    else
        picom --daemon &
    fi 
fi

# Launch clipboard manager
command -v greenclip &>/dev/null && pgrep greenclip || greenclip daemon &

# Launch pulseaudio
command -v pulseaudio &>/dev/null && pgrep pulseaudio || pulseaudio --start &

# Launch volume applet
command -v volumeicon &>/dev/null && pgrep volumeicon || volumeicon &

# Set wallpaper
command -v nitrogen &>/dev/null && nitrogen --restore &
