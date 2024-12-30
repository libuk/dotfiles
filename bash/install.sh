#!/bin/bash

set -e

if [ $SHELL != "/bin/bash" ]; then
	echo "Shell is not /bin/bash and is instead ${SHELL}"
	echo "Exiting program."
	exit 1
else
	# make a backup of the existing bashrc
	if [ ! -e ~/.bashrc.bak ]; then
		mv ~/.bashrc ~/.bashrc.bak
		echo ".bashrc file backed up at ~/.bashrc.bak"
	else
		mv ~/.bashrc ~/.bashrc.bak-another-one
		echo ".bashrc file backed up at ~/.bashrc.bak-another-one"
	fi

	# create a symlink to the new bashrc
	ln -s ~/Code/dotfiles/bash/.bashrc ~/.bashrc
	echo "symbolic link created at ~/.bashrc"
	exit 0
fi

