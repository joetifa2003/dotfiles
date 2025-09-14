#!/bin/sh

~/go/bin/cliphist list | fuzzel --dmenu | cliphist decode | wl-copy
