# $HOME/.profile
#
# This file contains per-user environment vars
#
export PATH=$GOPATH/bin:$HOME/bin:$PATH
export GOPATH=$HOME

export PS1='@%m %1~ $ '
export PAGER=less
export EDITOR=nvim
export GVIMINIT='let $GVIMRC="$XDG_CONFIG_HOME/vim/gvimrc" | source $GVIMRC'
export VIMINIT='let $VIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $VIMRC'

export STEAM_RUNTIME=0
