###############################################################

### 2501s's ~/bash.rc
### ARCH

###############################################################
# If not running interactively, don't do anything
# Alternative version: [[ $- != *i* ]] && return
if [[ $- != *i* ]] ;then
    return
fi

###############################################################
### Command prompt
# PS1='[\u@\h \W]\$ '
PS1="\[\033[0;33m\]\u@\h\[\033[0;34m\] \W \[\033[0;15m\]\$ \[\033[0m\]"

###############################################################

### 2501s's changes / additions:                            ###
### ARCH

###############################################################


###############################################################
### Vi mode in terminal
#set -o vi

###############################################################
### VIM default bash editor

export VISUAL=vim
export EDITOR="$VISUAL"

export BROWSER="firefox"

###############################################################
### colored man pages

man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}

###############################################################
### Aliases

alias ls='ls --color=auto'
alias ll="ls -laF"
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"
alias mpvl="mpv --loop"

###############################################################
### Fzf
source /usr/share/fzf/completion.bash 
source /usr/share/fzf/key-bindings.bash

###############################################################
### Input method
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

###############################################################
# Starts xorg when logging in on tty1
if [[ "$(tty)" = "/dev/tty1" ]]; then
	startx
fi

