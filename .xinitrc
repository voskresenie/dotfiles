#!/bin/sh
#
# ~/.xinitrc
#

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# status bar
while true; do
  nowplaying=$(mpc -f "Now Playing: %artist% - %title%" | egrep Now\ Playing: | awk 'sub(/Now Playing:/,"") { print $N, "  |   " }' | tr '[:lower:]' '[:upper:]')

  vol=$(amixer sget Master | egrep Mono: | awk -F "[][]" '{ print "VOL", $2, "  |   " }')
  battery=$(acpi -b | awk -F ", " '{print "BAT", $2, "  |   "}')

  xsetroot -name "${nowplaying}${vol}${battery}$(date +"%^a %d %^b %Y %l:%M:%S %p")"
  sleep .01s
done &

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
~/.fehbg

# window dropshadow
compton -b -e .3 --vsync opengl

# this helps with full screen games
wmname LG3D

# Japanese input
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

# start dwm
exec /usr/bin/dwm
