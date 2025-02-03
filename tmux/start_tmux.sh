#!/bin/bash

set -e

SESSION_NAME=$1

if [ -z $SESSION_NAME ]; then
  echo "Provide a session name. For example:"
  echo ""
  echo "bash start_tmux.sh session_name"
  exit 1
fi

tmux start-server

tmux new-session -s "$SESSION_NAME" -c ~/Code -d

tmux rename-window -t "$SESSION_NAME:0" shell1
tmux new-window -t "$SESSION_NAME:1" -n shell2
tmux new-window -t "$SESSION_NAME:2" -n neovim

tmux select-window -t "$SESSION_NAME:1"
tmux attach-session -t "$SESSION_NAME"

