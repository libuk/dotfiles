#!/bin/bash

set -e

OS=$1
OS_MAC="macos"
OS_UBUNTU="ubuntu"

show_help() {
	echo "Usage: $0 [operating-system]"
	echo
	echo "Examples:"
	echo " $0 ${OS_UBUNTU}"
	echo " $0 ${OS_MAC}"
}

# if operating system is not valid, show help

if [ "$OS" != "$OS_MAC" ] && [ "$OS" != "$OS_UBUNTU" ]; then
	show_help
	exit 1
fi	

# If os is ubuntu, check for existing installation before attempting install

if [ $OS = $OS_UBUNTU ]; then
	if [ -e ~/usr/bin/tmux ]; then
		echo "Platform: ${OS_UBUNTU}"

		echo "Installing tmux"

		sudo apt update
		sudo apt install tmux

		echo "tmux installed"
	else
		echo "tmux is already installed"
	fi
fi

# If os is macos, check for existing installation before attempting install

if [ $OS = $OS_MAC ]; then
	if [ -e /opt/homebrew/bin/tmux ]; then
		echo "Platform: ${OS_MAC}"

		echo "Installing tmux"

		brew install tmux

		echo "tmux installed"
	else
		echo "tmux is already installed"
	fi
fi

# Check if tmux config exists before creating symbolic link

if [ -e "$HOME/.tmux.conf" ]; then
	echo "tmux config file already exists"
else
	ln -s "${PWD}/.tmux.conf" "$HOME/.tmux.conf"

	echo "symbolic link created at ${HOME}/.tmux.conf"
fi

exit 0

