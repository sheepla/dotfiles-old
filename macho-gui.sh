#!/bin/sh

#menu='dmenu -i -p "Manual: "'
menu='rofi -dmenu -p "Manual: "'

manual=$(
    apropos -s ${SECTION:-''} ${@:-.} | \
    grep -v -E '^.+ \(0\)' |\
    awk '{print $2 "    " $1}' | \
    sort | \
    $menu | \
    sed -E 's/^\((.+)\)/\1/'
)

if [ -z "$MANUAL" ]; then
  man -T${FORMAT:-pdf} $manual | ${READER:-zathura -}
fi
