#!/bin/sh

# Launch daemonif not urxvt running
if ! pgrep -x "urxvtd" >/dev/null; then
    urxvtd --quiet --opendisplay --fork
fi

# Launch client
urxvtc
