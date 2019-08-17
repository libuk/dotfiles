#!/bin/bash

ZSHRC_PATH=$HOME/.zshrc
DOTFILES_DIR=$HOME/Code/dotfiles

install_zsh () {
  # install zsh
  sudo apt update;
  sudo apt install zsh;
  sudo apt install powerline fonts-powerline;
  
  # make default shell
  chsh -s /usr/bin/zsh root;
}

install_ohmyzsh () {
  wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh;
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

