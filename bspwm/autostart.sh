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
#DualMonitor
xrandr --output Virtual-1 --mode 1920x1080 &
run nm-applet &
run octoxbps-notifier &
run xfce4-power-manager &
numlockx on &
blueberry-tray &
/usr/libexec/polkit-gnome-authentication-agent-1 &
#picom -b --experimental-backends --config /home/hyper4saken/.config/picom/picom.conf
run volumeicon &
nitrogen --restore &
