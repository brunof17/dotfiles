# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

	# Path to your oh-my-zsh installation.
	  export ZSH=/home/bruno/.oh-my-zsh

	# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="charged"
#ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git reminder cabal chucknorris lol zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
source ~/.vim/bundle/gruvbox/gruvbox_256palette.sh


#ALIASES
#----------------------

alias ..='cd ..'
alias mv='mv -i'
alias mkdir='mkdir -p -v'
alias h='history'
alias j='jobs -l'
alias which='type -a'
alias q='exit'
alias clean ='clear'


alias root='sudo su'
alias v='vim'

# COLANÇOS -> SHAMAN
alias vimmyfavoritetexteditor='vim'

alias lx='ls -lXB'
alias li='ls -lSr'
alias lk='ls -ltr'
alias lc='ls -ltcr'
alias lu='ls -ltur'

alias lm='ll | more'
alias la='ll -a' 

alias dots='git --git-dir=$HOME/.dots.git/ --work-tree=$HOME'

alias yt='yaourt --noconfirm'
alias pacmanUpgrade='sudo pacman -Syu'
alias yaourtAurUpgrade='yaourt -Su --aur --noconfirm'
alias pacmanMirrors='sudo pacman-mirrors -f 0'

alias zshconfig='vim ~/.zshrc'
alias i3config='vim ~/.config/i3/config'
alias i3barconfig='vim ~/.i3blocks.conf'
alias bspwmconfig='vim ~/.config/bspwm/bspwmrc'
alias sxhkdconfig='vim ~/.config/sxhkd/sxhkdrc'

alias search='find . -type d | grep'

alias random='fortune |cowsay'
alias projetos='cd ~/Projetos'
alias UM='cd ~/Universidade'
alias dns='sudo vim /etc/resolv.conf'
#alias dots='git --git-dir=$HOME/.dots.git/ --work-tree=$HOME'


alias wifion='nmcli radio wifi on'
alias wifioff='nmcli radio wifi off'

alias hdmiVolume='pactl set-card-profile 0 output:hdmi-stereo'
alias computerVolume='pactl set-card-profile output:analog-stereo' 

alias fixtermite='source /etc/profile.d/vte.sh'

alias putas='echo QUERIAS NAO ERA'



#HMDI COMANDS
alias hdmiRight='xrandr --output HDMI1 --auto --right-of eDP1'
alias hdmiLeft='xrandr --output HDMI1 --auto --left-of eDP1'
alias hdmiOff='xrandr --output HDMI1 --auto --off'

#Search
alias cdSearch='cd /mnt/search/home/a74155'
alias linkSearch='sudo sshfs -o allow_other a74155@search1.di.uminho.pt:/ /mnt/search'
alias unlinkSearch='sudo umount /mnt/search; echo Unlink realizado'
alias connectSearch='ssh a74155@search1.di.uminho.pt'
alias sublimeSearch='subl3 /mnt/search/home/a74155'
alias connectSolaris='ssh a74155@ui.grid.prociv.pt'
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
alias pokemon='wine .wine/drive_c/users/bruno/Application\ Data/PokeOne/files/PokeOne.exe'
# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
