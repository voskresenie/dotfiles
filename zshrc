# $HOME/.zshrc
#
# This file contains configuration for zsh
#
# Lines configured by zsh-newuser-install
# shell history
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=100000
setopt inc_append_history
setopt extended_history

# with multios set, redirecting output does not prevent it from being piped
#   eg `echo hello >/dev/null | wc -l` evals to 1 (whereas unset, evals to 0)
# unsetopt multios

# don't error on wildcard no matches
setopt no_nomatch
unsetopt beep

bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle :compinstall filename '/home/david/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias pw='read -s PASS; echo $PASS | sha256sum | hex2ascii'

# editor
export EDITOR=nvim
alias suvim='sudo -E nvim'
alias vim='nvim'

# code
alias git-locate='git ls-files | grep'
alias git-chmod='git update-index --chmod='
export GOPATH=$HOME

# system
alias hdmi+='xrandr --output HDMI1 --same-as eDP1 --scale-from 2560x1440 --auto'
alias hdmi-='xrandr --output HDMI1 --off'
alias red='redshift -l 44.915194:-93.1044794'
alias syncclock='sudo ntpd -qg && sudo hwclock --systohc'

# packages
alias pacinfo='pacman -Q --info'
alias pacrm='sudo pacman -Rs'
alias makepkg-rebuild='makepkg -fi'
alias initpkgsums='makepkg -g >> PKGBUILD'

# screenshots
alias lastscreen='ls ~/ss/*.png | tail -n 1'
alias vlastscreen='feh "$(ls ~/ss/*.png | tail -n 1)"'
alias screenfetch='screenfetch -c 04,13'
alias scrot='scrot ~/ss/%Y-%m-%d-%H%M%S.png'
screengrab() {
    ffmpeg -f x11grab -s 2560x1440 -r 60 -i :0.0 -q:v 0 -vcodec huffyuv ~/grab.mkv
    ffmpeg -threads 8 -i ~/grab.mkv -crf 10 -b:v 3M ~/grab.webm
}

# media
alias chmodgw='sudo chmod -R ugo+rwX,o-w'
alias media='cd /mnt/media'
alias mpv='mpv -fs'
#alias ncmpcpp='ncmpcpp -h valhalla'

# gaming
alias steamdep='ldd ~/.local/share/Steam/ubuntu12_32/steamclient.so'
export STEAM_RUNTIME=0

# network
alias rsync='rsync -a --info=progress2'
alias svarog='ssh svarog'
alias valhalla='ssh valhalla'

# shell
setopt auto_cd
alias .='ls'
export PS1='@%m %1~ $ '
export PATH=$GOPATH/bin:$HOME/bin:$PATH
source /usr/share/doc/pkgfile/command-not-found.zsh

alias ls='ls -h --color=auto -N'
alias which='which -a'

alias copy='xsel -i'
alias diff='diff -aur --color'

alias font++="printf '\33]50;%s\007' \"xft:Inconsolata LGC:style=Bold:pixelsize=20:antialias=true:hinting=true\""
alias font+="printf '\33]50;%s\007' \"xft:Inconsolata LGC:style=Bold:pixelsize=16:antialias=true:hinting=true\""
alias font="printf '\33]50;%s\007' \"xft:Inconsolata LGC:style=Bold:pixelsize=12:antialias=true:hinting=true\""
alias font-="printf '\33]50;%s\007' \"xft:Inconsolata LGC:style=Bold:pixelsize=10:antialias=true:hinting=true\""

# Colored man pages: http://linuxtidbits.wordpress.com/2009/03/23/less-colors-for-man-pages/
# Less Colors for Man Pages
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;016m\E[48;5;220m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

# 4chan-compatible webm
### usage: webm -i INPUT -o OUTPUT -s START -d DURATION
###             [-w WIDTH] [-q QUALITY] [-t]
### START and DURATION must be a time duration
#            specification, see the Time duration
#            section in the ffmpeg-utils(1) manual.
webm() {
    while getopts ":i:o:w:q:s:d:t" opt; do
      case $opt in
        i) input="$OPTARG" ;;
        o) output="$OPTARG" ;;
        w) width="$OPTARG" ;;
        q) quality="$OPTARG" ;;
        s) start="$OPTARG" ;;
        d) duration="$OPTARG" ;;
        t) subtitles=true ;;
        :)  echo "Missing argument -$OPTARG" >&2
            exit 1 ;;
        \?) echo "Invalid option -$OPTARG" >&2
            exit 1
      esac
    done

    if [ -z "$input" ]; then
        printf "Required input parameter -i not given\n"
        return
    fi

    if [ -z "$output" ]; then
        printf "Required output parameter -o not given\n"
        return
    fi

    if [ -z "$start" ]; then
        printf "Required start time parameter -s not given\n"
        return
    fi

    if [ -z "$duration" ]; then
        printf "Required duration parameter -e not given\n"
        return
    fi

    if [ "$subtitles" ]; then
        subtitles_opts="-vf subtitles=$input"
    fi

    if [ -z "$width" ]; then
        width=960
    fi

    ffmpeg_str="ffmpeg -threads 8 -i $input -codec:v libvpx -vf scale=$width:-1 -crf 10 -b:v 3M -ss $start -t $duration -an -sn $subtitles_opts $output"
    eval "$ffmpeg_str"
    # TODO: add filesize check, repeat if unsatisfactory
}
