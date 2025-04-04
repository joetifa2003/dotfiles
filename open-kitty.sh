#!/bin/bash

kitty_window_id=$(wmctrl -lx | grep "kitty.kitty" | awk '{print $1}')

if [ -n "$kitty_window_id" ]; then
  wmctrl -i -a "$kitty_window_id"
else
  kitty
fi
