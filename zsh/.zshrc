export ZSH=$HOME/.oh-my-zsh # Path to oh-my-zsh installation.

ZSH_THEME="clean"           # Current theme.
COMPLETION_WAITING_DOTS="true"

CODE="/Users/danielliburd/Code"
DOTFILES="$CODE/dotfiles"
DOT_VIM="$CODE/dotfiles/vim"
DOT_ZSH="$CODE/dotfiles/zsh"

export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
source $ZSH/oh-my-zsh.sh
source $DOT_ZSH/plugins.sh

# Misc
alias lsa="ls -al"
alias clr="clear"
alias psc="cat package.json | jq .scripts"
alias be="bundle exec"
alias bi="bundle install"
alias fzc="FZF | pbcopy"
alias tx="tmux"

# Git
alias ga="git add"
alias gc="git commit"
alias gcf="git commit --fixup"
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
alias glg="git log --oneline --graph --decorate"
alias grim="git rebase -i master"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"

# directory colors
d=$HOME/.dircolors
test -r $d && eval "$(dircolors $d)"

# ngrok
alias ngrok="~/ngrok"

PATH=${PATH}:/usr/local/bin
PATH=${PATH}:/usr/bin
PATH=${PATH}:/opt/homebrew
PATH=${PATH}:/bin
PATH=${PATH}:/usr/sbin
PATH=${PATH}:/sbin
PATH=${PATH}:/opt/X11/bin
PATH=${PATH}:/Applications/Postgres.app/Contents/Versions/latest/bin
PATH=${PATH}:/opt/homebrew/opt/openssl@3/bin
PATH=${PATH}:/usr/local/go/bin
PATH=${PATH}:/usr/local/mysql/bin
PATH=${PATH}:$HOME/.local/bin
PATH=${PATH}:$HOME/.composer/vendor/bin

export PATH=${PATH}

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# chruby
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh # load chruby
source /opt/homebrew/opt/chruby/share/chruby/auto.sh # load autoswitching of ruby version on 'cd'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# SLS_DEBUG - Debug logs when running serverless
export SLS_DEBUG=true

# Docker host for WSL
# export DOCKER_HOST=tcp://localhost:2375

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/danielliburd/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/danielliburd/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/danielliburd/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/danielliburd/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh
