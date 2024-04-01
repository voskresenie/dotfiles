#!/usr/bin/env zsh
#
# $ZDOTDIR/.zshrc
#
zshrc=$XDG_CONFIG_HOME/zsh/zshrc
zshrcd=$XDG_CONFIG_HOME/zsh/zshrc.d
[ -f "$zshrc" ] && source "$zshrc"
[ -e "$zshrcd" ] && for f (~/**/*(N.)); do
  source "$zshrcd"/**/*
done
