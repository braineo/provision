#!/usr/bin/env bash

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Path to the bash it configuration
export BASH_IT="${HOME}/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/

function not_power_host {
    local host_name=$(who am i | awk '{print $NF}' | tr -d '()')
    local power_hosts=()
    if [[ ! ${power_hosts[*]} =~ "$host_name" ]]; then
        echo true
    fi;
}

if [[ -n $SSH_CONNECTION ]] && [[ $(not_power_host) ]]; then
    export BASH_IT_THEME='zork'
else
  export BASH_IT_THEME='powerline-multiline'
fi


# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set Xterm/screen/Tmux title with only a short hostname.
# Uncomment this (or set SHORT_HOSTNAME to something else),
# Will otherwise fall back on $HOSTNAME.
#export SHORT_HOSTNAME=$(hostname -s)

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# (Advanced): Uncomment this to make Bash-it reload itself automatically
# after enabling or disabling aliases, plugins, and completions.
# export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

# Load Bash It
source $BASH_IT/bash_it.sh

# TheFuck
# eval $(thefuck --alias)

# Make color look nicer
export TERM=xterm-256color

export ALTERNATE_EDITOR=""
export TERM=xterm-256color
export EMACS_USER_MODE='BIN'
alias ls='ls --color=auto'
alias emacsapp="/usr/local/bin/emacs"
# export SHELL=/bin/zsh
# exec /bin/zsh

export POWERLINE_LEFT_PROMPT="user_info cwd scm"
export POWERLINE_RIGHT_PROMPT="in_vim clock battery"

