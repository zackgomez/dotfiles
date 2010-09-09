#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
xmodmap ~/.xmodmap
feh --bg-scale /home/zack/pics/bg.jpg
conky | while read -r; do xsetroot -name "$REPLY"; done &
exec dwm
