#!/usr/bin/env zsh
#
# $ZDOTDIR/.zlogout
#
zlogout=$XDG_CONFIG_HOME/zsh/zlogout
zlogoutd=$XDG_CONFIG_HOME/zsh/zlogout.d
[ -f "$zlogout" ] && source "$zlogout"
[ -e "$zlogoutd" ] && for f (~/**/*(N.)); do
  source "$zlogoutd"/**/*
done
