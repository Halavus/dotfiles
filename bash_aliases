#!/bin/bash
# bash_aliases
#

alias reload='. $HOME/.bash_profile'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias cdhist="dirs -v"

alias cl='clear'
alias cla='clear;la'
alias cll='clear;ll'
alias cls='clear;ls'
alias clal='clear;lal'
alias rmdir='rm -rf'
alias d='date +%Y%m%d-%H%M%S'
alias h='history'
alias ls='ls -F --color=auto'
alias l='ls'
alias la='ls -ah'
alias ll='ls -ltrh'
alias lu='ls -lturh'
alias lal='ls -altrh'
alias ldir='ll -d */'
alias sl='ls'
alias less='less -iMFR'
alias more='less'
alias mroe='more'
alias m='more'
alias r='fc -s'
alias igrep='grep -i'
alias rgrep='grep -r'
alias ftail='tail -f'
alias hn='hostname -a'
alias va='vi ~/.dotfiles/bash_aliases; source ~/.dotfiles/bash_aliases && echo "aliases sourced"'
alias vi='vim'

# coloured output using grc
alias ping='grc ping'
alias netstat='grc netstat'
alias traceroute='grc traceroute'
alias diff='grc diff'
alias tail='grc tail'
alias ps='grc ps'
alias lsof='grc lsof'

#alias scp='scp -o StrictHostKeyChecking=no -c arcfour -o Compression=no'
alias fullps='ps -auxwww'
alias functions='declare -F'
alias xml='xmllint --format'

# Walo aliases
# variables
today=$(date +%d%m%Y)
backups=/media/walo/Backups

# apps
#alias py='python3'
#alias py2='python'
# alias df='/home/walo/games/df_linux43.06/dfhack'
alias dfnb='/home/walo/games/df_linuxLNB/startlnp'
alias chrome='google-chrome'
# ---------------------

# moving
alias ..='cd ..'
alias p=pushd
alias pp=popd

alias flasky='/users/walo/flasky'
alias ticket='cd /users/walo/documents/code_the_web/ticket'
alias learnpy='cd /users/walo/learnPython'
alias code='cd /home/walo/code_the_web'
alias wp='cd /home/walo/code_the_web/wp/test.valentinoberson.ch/wp-content/themes/test_child_2017/'
alias pbin="p /usr/local/bin/"
alias psbin="p /usr/local/sbin/"
# ---------------------

# editing/updating
alias edalias='vim ~/.bash_aliases'
alias resalias='source ~/.bashrc'
alias checkalias='cat ~/.bash_aliases'
alias edbackup='sudo vim /usr/local/sbin/backup'
alias edgrubmenu='sudo vim /etc/grub.d/40_custom'
alias edhdparm='sudo vim /etc/hdparm.conf'
alias update-grub='sudo update-grub'
# ---------------------

# commands
#  Flask related
alias avenv='source venv/bin/activate'
alias start='python3 ticketservice.py runserver'

#  System
alias apt-get='sudo apt-get'
alias blkid='sudo blkid'
alias backup='sudo backup'
alias gparted='sudo gparted'
alias killsda='sudo hdparm -y /dev/sda'
#alias l='ls -lah'
#alias rsync='sudo rsync -ahvPHXS --progress'
alias readlog='less ~/zzbackup.logs/rsync-latest.log'

alias rm='rm -v'
#  !! In Order to have sudo work with all user aliases !!
alias sudo='sudo '
# from trash-cli pkg. See man trash for more infos.
## to restore a file sent to trash, run: restore-trash (from trash-cli pkg)
alias trash='trash-put'
alias trahs='trash'

# --------------------

# SSH Connections
alias sshmp='ssh muspnjyc@musikpunkt.ch'

# unordered
alias aliases='cat /home/walo/.bash_aliases'
alias checksda='sudo hdparm -C /dev/sda'
alias aptitude='sudo aptitude'
alias py='python'
alias startxampp='(cd /opt/lampp/ && sudo ./xampp start)'
alias edsshvo='sudo vim /usr/local/bin/sshvo'
alias goodnight='sudo goodnight'
alias mountnetgear='sudo mount -t cifs //10.0.0.1/test /media/netgear/ -o uid=1000,gid=1000,username=admin,password=treize13,rw'
alias umountnetgear='sudo umount /media/netgear ; echo "option -l to force."'
alias du='du -sh' # Disk Usage Summary Human readable
alias event='cd sites/metanet_backup/musikpunkt/swisstrombonedays.ch/wp-content/themes/event'
alias findwalo='find . -maxdepth 1 -user walo'
