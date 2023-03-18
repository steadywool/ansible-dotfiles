#!/bin/bash

# Default folder
WALLPAPER_DIR="${HOME}/Pictures/Wallpaper"
if [[ ! -d ${WALLPAPER_DIR} ]]; then
    mkdir -p ${WALLPAPER_DIR}
fi

case ${1} in
    # Use a random wallpaper from a folder
    '--random' | '-r')
        swaymsg output '*' bg $(find ${2:-${WALLPAPER_DIR}} -type f | shuf -n1) fill
    ;;

    #download a temporary wallpaper with Picsum
    '--download' | '-d')
        curl -L -o /tmp/wallpaper.jpg 'https://picsum.photos/1920/1080' && \
        swaymsg output '*' bg /tmp/wallpaper.jpg fill
    ;;

    # Select an image as wallpaper
    '--image' | '-i')
        swaymsg output '*' bg ${2} fill
    ;;
 
    # Select a color as wallpaper
    '--color' | '-c')
        swaymsg output '*' bg ${2} solid_color
    ;;
esac