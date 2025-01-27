#!/bin/bash

set -e

# install vim-plug
echo "fetching vim-plug"

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "vim-plug saved in ${HOME}/.local/share/nvim/site/autoload/plug.vim"

NV_CONFIG_PATH=~/.config/nvim

# symlink neovim config
if [ -e "$NV_CONFIG_PATH/init.lua" ]; then
	echo "init file already exists at $NV_CONFIG_PATH/init.lua"
	exit 1
else
	# create neovim config directory
	mkdir $NV_CONFIG_PATH

	ln -s ~/Code/dotfiles/nvim/init.lua $NV_CONFIG_PATH/init.lua
	ln -s ~/Code/dotfiles/nvim/lua $NV_CONFIG_PATH/lua
fi

echo "neovim config folder created at $NV_CONFIG_PATH"
