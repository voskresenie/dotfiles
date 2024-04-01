#!/usr/bin/env zsh
#
# $ZDOTDIR/.zlogin
#
zlogin=$XDG_CONFIG_HOME/zsh/zlogin
zlogind=$XDG_CONFIG_HOME/zsh/zlogin.d
[ -f "$zlogin" ] && source "$zlogin"
[ -e "$zlogind" ] && for f (~/**/*(N.)); do
  source "$zlogind"/**/*
done
