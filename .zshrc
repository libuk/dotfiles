export ZSH=$HOME/.oh-my-zsh # Path to oh-my-zsh installation.
ZSH_THEME="honukai" # Current theme.

COMPLETION_WAITING_DOTS="true"

plugins=(
  brew
  brew-cask
  zsh-nvm
)

alias lsa="ls -a"
alias v="vim"
alias ga="git add"
alias gc="git commit -m"
alias gs="git status"
alias gd="git diff"
alias gp="git push"
alias gpl="git pull"
alias gco="git checkout"

source $ZSH/oh-my-zsh.sh

PATH=${PATH}:/usr/local/bin
PATH=${PATH}:/usr/bin
PATH=${PATH}:/bin
PATH=${PATH}:/usr/sbin
PATH=${PATH}:/sbin
PATH=${PATH}:/opt/X11/bin
export PATH=${PATH}

export NVM_DIR="$HOME/.nvm"
