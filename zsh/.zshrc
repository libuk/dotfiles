export ZSH=$HOME/.oh-my-zsh # Path to oh-my-zsh installation.

ZSH_THEME="clean"           # Current theme.
COMPLETION_WAITING_DOTS="true"

CODE="$HOME/Code"
DOTFILES="$CODE/dotfiles"
DOT_VIM="$CODE/dotfiles/vim"
DOT_ZSH="$CODE/dotfiles/zsh"

export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
source $ZSH/oh-my-zsh.sh
source $DOT_ZSH/plugins.sh
source $DOT_ZSH/alias.sh # aliases

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
PATH=${PATH}:$CODE/hmpps-approved-premises-tools/bin

export PATH=${PATH}

# export APPROVED_PREMISES_UI_PATH=/Users/danielliburd/Code/clients/moj/hmpps-temporary-accommodation-ui
export APPROVED_PREMISES_UI_PATH=/Users/danielliburd/Code/clients/moj/hmpps-community-accommodation-tier-2-ui
export APPROVED_PREMISES_API_PATH=/Users/danielliburd/Code/clients/moj/hmpps-approved-premises-api

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# rvm
source /Users/danielliburd/.rvm/scripts/rvm

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
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)
