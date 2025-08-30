#!/bin/bash
selected_file=$(find ~/wallpapers/ -type f -not -name ".gitattributes" | fuzzel -d -w 100)

hyprpanel sw $selected_file
