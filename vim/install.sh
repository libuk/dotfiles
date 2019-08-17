#!/bin/bash

# TODO: Make this more flexible
DOTFILES_DIR=$HOME/Code/dotfiles

VIM_DIR=$HOME/.vim
BUNDLE_DIR=$VIM_DIR/bundle
PLUGINS=$VIM_DIR/plugins

# Create vim directory if it doesn't already exist
if [ ! -d $VIM_DIR ]; then
	mkdir -p $VIM_DIR
fi

# Add symlinks for vim files
ln -sfv "$DOTFILES_DIR/vim/vimrc" $HOME/.vimrc
ln -sfv "$DOTFILES_DIR/vim/plugins.vim" $HOME/.vim/plugins.vim

# Make the bundle directory for plugins
mkdir -p "$BUNDLE_DIR"

# Add directory for plugins
# Then copy over the plugins to the systems directory
mkdir -p $PLUGINS
/bin/bash -c "cp "$DOTFILES_DIR/vim/plugins.vim" $PLUGINS"

# Install bundles
vim +PlugInstall +qall
