#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

$HOME/.config/polybar/launch.sh &

xsetroot -cursor_name left_ptr &
run sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &
dunst &
xrandr --output Virtual-1 --mode 1920x1080 &
run nm-applet &
run octoxbps-notifier &
numlockx on &
blueberry-tray &
/usr/libexec/polkit-gnome-authentication-agent-1 &
run volumeicon &
nitrogen --restore &
