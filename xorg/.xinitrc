#!/bin/sh

export DESKTOP_SESSION=gnome

export PATH=$HOME/.local/bin:$PATH

systemctl --user set-environment DISPLAY=:0

setxkbmap it

/usr/bin/xcalib -d :0 ~/.color/icc/t430-cal.icc

xbindkeys
xmodmap ~/.Xmodmap

redshift &

compton --config ~/.config/compton.conf -b

~/.fehbg &

exec i3
