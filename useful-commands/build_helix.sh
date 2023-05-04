#!/bin/bash

# build helix
cd ../repos/helix
cargo install --path helix-term --locked
ln -s $PWD/runtime ~/.config/helix/runtime