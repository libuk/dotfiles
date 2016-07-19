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
alias sp-pl="spotify play"
alias sp-pl-al="spotify play album"
alias sp-pl-ar="spotify play artist"
alias sp-pl-ls="spotify play list"
alias sp-ps="spotify pause"
alias sp-nxt="spotify next"
alias sp-prev="spotify prev"
alias sp-tg-sh="spotify toggle shuffle"
alias sp-tg-rp="spotify toggle repeat"
alias sp-st="spotify status"
alias sp-sh="spotify share"

source $ZSH/oh-my-zsh.sh

PATH=${PATH}:/usr/local/bin
PATH=${PATH}:/usr/bin
PATH=${PATH}:/bin
PATH=${PATH}:/usr/sbin
PATH=${PATH}:/sbin
PATH=${PATH}:/opt/X11/bin
export PATH=${PATH}

export NVM_DIR="$HOME/.nvm"
