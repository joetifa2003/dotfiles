#!/bin/bash
selected_file=$(find ~/wallpapers/ -type f | fuzzel -d -w 100)

hyprpanel sw $selected_file
