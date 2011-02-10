#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice

# load my keyboard changes
xmodmap ~/.xmodmap &

# background, screensaver, defaults
feh --bg-scale /home/zack/pics/blueearth.jpg &
numlockx on &
xscreensaver -no-splash &

# music
/usr/bin/mpd ~/.mpd/config &

urxvtd &

# conky status bar
conky | while read -r; do xsetroot -name "$REPLY"; done &

wmname LG3D

echo $PATH > .path.startup

exec dwm 2> ~/.dwm.log
