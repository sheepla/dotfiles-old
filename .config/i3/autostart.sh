#!/usr/bin/env bash

# Reload ~/.Xresources for urxvt and other
xresources="$HOME/.Xresources"
[ -f "$xresources" ] && xrdb "$xresources"

# Set display layout and resolution (Using ArandR)
layout_config="$HOME/.config/xrandr/layout.sh"
[ -f "$layout_config" ] && "$layout_config"

# Launch pulseaudio
command -v pulseaudio &>/dev/null && {
    pulseaudio --kill && pulseaudio --start
}

# Launch composite manger
if command -v picom &>/dev/null && ! pgrep picom
then
    picom_conf="$HOME/.config/picom/picom.conf" 

    if [ -f $picom_conf ]
    then
        picom --config "$picom_conf" --daemon --experimental-backends &
    else
        picom --daemon --experimental-backends &
    fi 
fi

# Launch clipboard manager
command -v greenclip &>/dev/null && pgrep greenclip || greenclip daemon &

# Launch pulseaudio
command -v pulseaudio &>/dev/null && pgrep pulseaudio || pulseaudio --start &

# Launch volume applet
command -v volumeicon &>/dev/null && pgrep volumeicon || volumeicon &

# Launch screenshot applet
command -v flameshot &>/dev/null && pgrep flameshot || flameshot &

# Launch network applet
command -v nm-applet &>/dev/null && pgrep nm-applet || nm-applet &

# Set wallpaper
command -v nitrogen &>/dev/null && nitrogen --restore &
