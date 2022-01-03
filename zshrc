# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="charged"

plugins=(git reminder zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh


#ALIASES
#----------------------

#Movement
alias ..='cd ..'
alias ...='cd ../..'


#Commands
alias mv='mv -i'
alias mkdir='mkdir -p -v'
alias h='history'
alias j='jobs -l'
alias which='type -a'
alias q='exit'
alias clean ='clear'
alias root='sudo su'
alias v='vim'
alias search='find . -type d | grep'
alias dns='sudo vim /etc/resolv.conf'
alias random='fortune |cowsay'

#LS
alias lx='ls -lXB'
alias li='ls -lSr'
alias lk='ls -ltr'
alias lc='ls -ltcr'
alias lu='ls -ltur'

alias lm='ll | more'
alias la='ll -a' 

#For dot files
alias dots='git --git-dir=$HOME/.dots.git/ --work-tree=$HOME'

#Config files
alias zshconfig='vim ~/.zshrc'

#HMDI COMANDS
alias hdmiRight='xrandr --output HDMI1 --auto --right-of eDP1'
alias hdmiLeft='xrandr --output HDMI1 --auto --left-of eDP1'
alias hdmiOff='xrandr --output HDMI1 --auto --off'
