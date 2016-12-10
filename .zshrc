export ZSH=$HOME/.oh-my-zsh # Path to oh-my-zsh installation.
ZSH_THEME="amuse" # Current theme.

COMPLETION_WAITING_DOTS="true"

plugins=(
  brew
  brew-cask
  zsh-nvm
)

# Misc
alias lsa="ls -a"
alias v="vim"
alias tourn="cd ~/repositories/tournaments/src/TicketmasterSystems.Tournaments.GP/front_end"
alias dockval="eval $(docker-machine env)"
alias clr="clear"
alias ag="sudo apt-get"
alias agu="sudo apt-get update"
alias agi="sudo apt-get install"

# Git
alias ga="git add"
alias gc="git commit -m"
alias gs="git status"
alias gd="git diff"
alias gp="git push"
alias gpl="git pull"
alias gco="git checkout"
alias gb="git branch"
alias gbs="git branch -vv"
alias gstash="git stash"
alias gstashls="git stash list"
alias gstashd="git stash drop"
alias gstashapp="git stash apply"

source $ZSH/oh-my-zsh.sh

PATH=${PATH}:/usr/local/bin
PATH=${PATH}:/usr/bin
PATH=${PATH}:/bin
PATH=${PATH}:/usr/sbin
PATH=${PATH}:/sbin
PATH=${PATH}:/opt/X11/bin
export PATH=${PATH}

export NVM_DIR="$HOME/.nvm"
export HOMEBREW_GITHUB_API_TOKEN=8639e0904e8307bd8a59c1d39840edf063809144

export NVM_DIR="/home/sandals/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
