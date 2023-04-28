#!/bin/bash

# rust / cargo
curl https://sh.rustup.rs -sSf | sh

# the mighty fish
git clone https://github.com/fish-shell/fish-shell.git

# the mighty helix editor
git clone https://github.com/helix-editor/helix.git
cd helix
cargo install --path helix-term --locked

# the mighty zellij muxer
git clone https://github.com/zellij-org/zellij.git
