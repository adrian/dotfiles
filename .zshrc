# update prompt to include git branch name and working copy state
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b '
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr '+'
zstyle ':vcs_info:git:*' unstagedstr '!'
zstyle ':vcs_info:git:*' formats '%b%u%c '
zstyle ':vcs_info:git:*' actionformats '%b%u%c '
setopt PROMPT_SUBST
PROMPT='%F{cyan}%~%f %F{green}${vcs_info_msg_0_}%f$ '

# colorize different file types
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

# quickly edit and source .zshrc
alias vz="vi ~/.zshrc"
alias sz=" source ~/.zshrc; echo '~/.zshrc sourced'"

# Other useful alias
alias tk="~/lu/sre/toolkit/ctl.sh run"
alias grep='grep --color'
alias c="clear"
alias ll="ls -lah"
alias lh="ls -a | egrep '^\.'"
alias copy="cp"
alias f='find . | grep'

# IP alias and functions
alias ip="ifconfig -a | egrep -A 7 '^en0' | grep inet | grep -oE '((1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])\.){3}(1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])' | head -n 1"
alias myip="curl -s http://checkip.dyndns.org/ | sed 's/[a-zA-Z<>/ :]//g'"

# docker aliases
alias dops="docker run --rm -it -v ~/.aws:/root/.aws -v $(pwd):/app my-toolbox"

# Pretty print the PATH
alias path='echo; tr ":" "\n" <<< "$PATH"; echo;'

# Don't display a "%" on starting a new terminal
#export PROMPT_EOL_MARK=""

# Home and End keys to start and end of line
bindkey '\e[H'    beginning-of-line
bindkey '\e[F'    end-of-line
