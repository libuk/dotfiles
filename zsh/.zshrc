export ZSH=$HOME/.oh-my-zsh # Path to oh-my-zsh installation.
ZSH_THEME="clean"           # Current theme.

COMPLETION_WAITING_DOTS="true"

source $ZSH/oh-my-zsh.sh

# Zero 1
alias zid="eval "$(ssh-agent -s)" && ssh-add -K ~/.ssh/id_rsa_zero_1"
alias zdock="docker container start validator_strapi-sql-database"

# Misc
alias lsa="ls -al"
alias clr="clear"
alias ag="sudo apt-get"
alias agu="sudo apt-get update"
alias agi="sudo apt-get install"
alias wk="cd ~/work/"
alias fl="cd ~/www/feelo"
alias t="todo.sh"
alias psc="cat package.json | jq .scripts"

CODE="/Users/danielliburd/Code"
DOTFILES="$CODE/dotfiles"
DOT_VIM="$CODE/dotfiles/vim"
DOT_ZSH="$CODE/dotfiles/zsh"

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

# Python
alias python="python3"
alias activate="source venv/bin/activate"                         # alias for activating venv
export WORKON_HOME=~/Code/python_projects                         # set path for 'workon' command
export VIRTUALENVWRAPPER_PYTHON=/usr/local/opt/python/bin/python3 # set default interpreter for venv
source /Users/danielliburd/Library/Python/3.6/bin/virtualenvwrapper.sh

# ngrok
alias ngrok="~/ngrok"

PATH=${PATH}:/usr/local/bin
PATH=${PATH}:/usr/bin
PATH=${PATH}:/bin
PATH=${PATH}:/usr/sbin
PATH=${PATH}:/sbin
PATH=${PATH}:/opt/X11/bin
PATH=${PATH}:/Applications/Postgres.app/Contents/Versions/latest/bin
PATH=${PATH}:/.gem/ruby/2.3.0/bin
PATH=${PATH}:/Users/danielliburd/.gem/ruby/2.3.0/bin
PATH=${PATH}:/Users/danielliburd/Library/Python/3.6/bin
PATH=${PATH}:/usr/local/go/bin
PATH=${PATH}:/usr/local/mysql/bin

export PATH=${PATH}

export HOMEBREW_GITHUB_API_TOKEN=8639e0904e8307bd8a59c1d39840edf063809144

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# SLS_DEBUG - Debug logs when running serverless
export SLS_DEBUG=true

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/danielliburd/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/danielliburd/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/danielliburd/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/danielliburd/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh
