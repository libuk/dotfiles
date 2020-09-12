#!/bin/bash

PLUGINS_DIR="${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins"

install_autosuggestions () {
  if [ ! -d "$PLUGINS_DIR/zsh-autosuggestions" ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions PLUGINS_DIR/zsh-autosuggestions
    echo 'Autosuggestions installed'
  fi

}

plugins=(
  zsh-autosuggestions
)

install_autosuggestions

