#!/bin/sh
#
# $HOME/.xinitrc
#
# This file contains configuration for xorg-xinit and allows customization of
# xorg server at startup
#
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xresources="${XDG_CONFIG_HOME:-~/.config}/X11/xresources"
[[ -f "$xresources" ]] && xrdb -merge "$xresources"

# status bar
$HOME/bin/xstat &

# turn off screen blanking
xset dpms 0 0 0
xset -dpms s off

# MPD scrobbling daemon
mpdcron &

# laptop keys
xbindkeys &

# swap caps and escape
setxkbmap -option "caps:swapescape"

# set wallpaper
${XDG_CONFIG_HOME:-~/.config}/fehbg

# window dropshadow
compton -b -e .3 --vsync opengl

# this helps with full screen games
wmname LG3D

# redshift
redshift -l 44.915194:-93.1044794 &

# Japanese input
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

# start dwm
exec /usr/bin/dwm
