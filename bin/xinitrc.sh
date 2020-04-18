#!/bin/sh

# Reload Xresources(urxvt config file)
xrdb ~/.Xresources

# if not urxvt daemon running
if ! pgrep -x "urxvtd" >/dev/null; then
    urxvtd --quiet --opendisplay --fork
fi

# Set key repeat rate
# format:
#     xset r rate <delay> [<rate>]
xset r rate 280 40 &

# Launch input method
#export GTK_IM_MODULE=fcitx
#export QT_IM_MODULE=fcitx
#export XMODIFIERS=@im=fcitx
#export DefaultIMModule=fcitx
#fcitx &



# Launch WM
exec i3 &
