#!/bin/sh

env_vars="DISPLAY WAYLAND_DISPLAY XDG_CURRENT_DESKTOP XDG_SESSION_TYPE XDG_SESSION_DESKTOP HYPRLAND_INSTANCE_SIGNATURE"

systemctl --user import-environment $env_vars
dbus-update-activation-environment --systemd $env_vars

systemctl --user start hyprland-session.target
systemctl --user restart xdg-desktop-portal.service
