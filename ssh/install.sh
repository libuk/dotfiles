#!/bin/bash

# rm current config (rename to old)
if [[ -f ~/.ssh/config ]]; then
  mv ~/.ssh/config ~/.ssh/config_old
fi

# copy our config into the ssh dir removing the '_mac' suffix
ln -s ~/Code/dotfiles/ssh/config_mac ~/.ssh/config

