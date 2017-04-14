# Startup
function fish_greeting
  fortune -a | cowsay | lolcat
end

funcsave fish_greeting

# Misc
alias lsa="ls -a"
alias vim="/usr/local/bin/vim"
alias v="vim"
alias clr="clear"
alias ag="sudo apt-get"
alias agu="sudo apt-get update"
alias agi="sudo apt-get install"
alias config_fish="~/.config/fish/config.fish"

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

set PATH /usr/local/bin /usr/bin /bin /usr/sbin /sbin $PATH
