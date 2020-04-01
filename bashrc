#
# bashrc
#

#if [[ "$TERM" != "screen" ]]
#then
#   # try to attach to existing session, or start a new one
#   tmux -2 attach-session -t "$USER" || tmux -2 new-session -s "$USER"
#   exit
#fi
export HOSTFILE=~/.hosts
export PATH=$PATH:~/bin

unset HISTFILE
HISTCONTROL=ignoredups
EDITOR=vi
VISUAL=vim
PAGER='less -i'


set -o notify   # Report status of terminated bg jobs immediately
#set -o emacs    # emacs-style editing

#shopt -s extglob   # extended pattern matching features
shopt -s cdspell   # correct dir spelling errors on cd
shopt -s lithist   # save multi-line commands with newlines
shopt -s autocd    # if a command is a dir name, cd to it
shopt -s checkjobs # print warning if jobs are running on shell exit
shopt -s dirspell  # correct dir spelling errors on completion
shopt -s globstar  # ** matches all files, dirs and subdirs
shopt -s cmdhist   # save multi-line commands in a single hist entry
shopt -s checkwinsize # check the window size after each command
shopt -s no_empty_cmd_completion # don't try to complete empty cmds

#coloured man pages
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
#export LESSOPEN="|~/bin/lesspipe.sh %s"

# define some colours
GREY=$'\033[1;30m'
RED=$'\033[1;31m'
GREEN=$'\033[1;32m'
YELLOW=$'\033[1;33m'
BLUE=$'\033[1;34m'
MAGENTA=$'\033[1;35m'
CYAN=$'\033[1;36m'
WHITE=$'\033[1;37m'
NONE=$'\033[m'

#random grep color
#export GREP_COLOR="1;3$((RANDOM%6+1))"
#export GREP_OPTIONS='--color=auto'
export GRC_HOME=~/.grc

# colored ant
export ANT_ARGS='-logger org.apache.tools.ant.listener.AnsiColorLogger'

export CDPATH=".::..:../..:~/:~/dev/"

source ~/.dotfiles/prompt
#source ~/.dotfiles/bash_dyncompletion
source ~/.dotfiles/aliases

if [[ -d ~/.dotfiles/functions.d ]]; then
    for file in ~/.dotfiles/functions.d/*; do
        source "$file"
    done
fi

export INPUTRC=~/.dotfiles/inputrc

umask 022

# trap commands and echo them to xterm titlebar. Must be last line.
trap 'echo -ne "\033]0;$BASH_COMMAND - $USER@${HOSTNAME}>$(pwd)\007"' DEBUG

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
#export SDKMAN_DIR="/home/walo/.sdkman"
#[[ -s "/home/walo/.sdkman/bin/sdkman-init.sh" ]] && source "/home/walo/.sdkman/bin/sdkman-init.sh"

export GOROOT=/opt/go
export GOPATH=~/code_the_web/go/
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:/opt/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
