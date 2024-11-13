#!/bin/bash

set -e

# Symlink Alacritty config file

if ! [ -f ~/.config/alacritty/alacritty.toml ]; then
	mkdir -p ~/.config/alacritty

	ln -s "$PWD/alacritty.toml" ~/.config/alacritty/

	echo "Alacritty config file created at: ~/.config/alacritty/alacritty.toml"

	exit 0
fi
