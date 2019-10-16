#!/bin/bash

HOMEBREW_DIR="/usr/local/Cellar";

install_homebrew () {
  if [ ! -d $HOMEBREW_DIR ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
  fi
}

install_packages () {
  # todo - load packages file and install at once
  brew install jq;
}

setup () {
  install_homebrew;
  install_packages;
}

setup
