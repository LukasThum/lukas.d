#!/bin/bash

# create the repos folder and go there
mkdir -p ../repos
cd ../repos

# rust / cargo
curl https://sh.rustup.rs -sSf | sh

# clone the repos
git clone https://github.com/fish-shell/fish-shell.git

git clone https://github.com/helix-editor/helix.git

git clone https://github.com/zellij-org/zellij.git

git clone https://github.com/catppuccin/iterm.git