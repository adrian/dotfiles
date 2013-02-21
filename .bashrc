# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# some more ls aliases
alias ll='ls -alF'

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

export EDITOR=vi

# From http://www.dvhart.com/tag/git/
if [ $TERM != "linux" ]; then
    TITLEBAR="\[\e]2;\w\a\]"
fi
GIT_PS1_SHOWDIRTYSTATE=1
PROMPT="\u@\h:\w\$(__git_ps1 ' [%s]')\n\$ "

# Custom bash prompt via kirsle.net/wizards/ps1.html
PS1="$TITLEBAR\[$(tput bold)\]\[$(tput setaf 2)\]\u@\h\[$(tput setaf 7)\] \[$(tput setaf 4)\]\w\[$(tput setaf 3)\]\$(__git_ps1 ' (%s)')\n\\$ \[$(tput sgr0)\]"

# .bashrc.local is not kept in version control
# intended for machine specific changes
[ ! -f ~/.bashrc.local ] || . ~/.bashrc.local

