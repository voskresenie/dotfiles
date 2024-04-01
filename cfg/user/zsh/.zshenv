#!/usr/bin/env zsh
#
# $ZDOTDIR/.zshenv
#
zshenv=$XDG_CONFIG_HOME/zsh/zshenv
zshenvd=$XDG_CONFIG_HOME/zsh/zshenv.d
[ -f "$zshenv" ] && source "$zshenv"
[ -e "$zshenvd" ] && for f (~/**/*(N.)); do
  source "$zshenvd"/**/*
done
