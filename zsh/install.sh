#!/bin/bash

ZSHRC_PATH=$HOME/.zshrc
DOTFILES_DIR=$HOME/Work/dotfiles

# If .zshrc already exists, amend file name
if [ -f $ZSHRC_PATH ]; then
  mv $ZSHRC_PATH $HOME/.zshrc-old
fi

# Create symlink to .zshrc 
ln -sfv "$DOTFILES_DIR/zsh/zshrc" $ZSHRC_PATH

