#!/usr/bin/env zsh
#
# $ZDOTDIR/.zprofile
#
zprofile=$XDG_CONFIG_HOME/zsh/zprofile
zprofiled=$XDG_CONFIG_HOME/zsh/zprofile.d
[ -f "$zprofile" ] && source "$zprofile"
[ -e "$zprofiled" ] && for f (~/**/*(N.)); do
  source "$zprofiled"/**/*
done
