#!/bin/sh

#xrdb $HOME/.Xresources

urxvtc "$@"

if [ $? -eq 2 ]; then
    urxvtd -q -o -f
    urxvtc "$@"
fi
