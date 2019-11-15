#!/bin/bash

install_vitals () {
  sudo apt update;
  sudo apt install curl;
  sudo apt install wget;
  sudo apt install terminator;
  sudo apt install jq;
}

install_vitals

