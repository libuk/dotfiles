#!/bin/bash

PLUGINS_DIR=~/.oh-my-zsh/custom/plugins

install_autosuggestions () {
  AUTOSUGGESTIONS_DIR="$PLUGINS_DIR/zsh-autosuggestions"

  if [ ! -d  $AUTOSUGGESTIONS_DIR ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions $AUTOSUGGESTIONS_DIR
    echo 'Autosuggestions installed'
  fi
}

plugins=(
  zsh-autosuggestions
)

install_autosuggestions

