#!/bin/bash

ZSHRC_PATH=$HOME/.zshrc
DOTFILES_DIR=$HOME/Work/dotfiles

install_zsh () {
  # install zsh
  brew install zsh

  # make default shell
  chsh -s /usr/bin/zsh root;
}

install_ohmyzsh () {
  curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | zsh;
}

setup_zshrc () {
  # If .zshrc already exists, amend file name
  if [ -f $ZSHRC_PATH ]; then
    mv $ZSHRC_PATH $HOME/.zshrc-old
  fi

  # Create symlink to .zshrc 
  ln -sfv "$DOTFILES_DIR/zsh/zshrc" $ZSHRC_PATH;
  source $ZSHRC_PATH;
}

setup () {
  install_zsh;
  install_ohmyzsh;
  setup_zshrc;
}

setup

