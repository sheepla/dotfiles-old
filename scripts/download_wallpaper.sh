#!/bin/sh

if [ -d "$1" ]; then
    echo "Directory $1 exists."
    #wget https://wallpaperaccess.com/download/minimalist-forest-1216992 -O $1/moon.jpg
    #wget https://wallpaperaccess.com/download/minimalist-forest-1216619 -O $1/bridge.jpg
    #wget https://wallpaperaccess.com/download/minimalist-forest-1216364 -O $1/mountian.jpg
    #wget https://wallpaperaccess.com/download/minimalist-forest-99790   -O $1/sunrize.jpg
    #wget https://wallpaperaccess.com/download/minimalist-forest-1216608 -O $1/ice.jpg
    wget https://wallpaperaccess.com/download/minimal-forest-1216423    -O $1/day-mountain.jpg
    #wget https://unsplash.com/photos/rMWmDMeaoBk/download?force=true     -O $1/ice-mountain.jpg
else
    echo "Directory $1 not exists."
fi
