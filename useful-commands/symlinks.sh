#!/bin/bash

# the mighty symlinks
function create_symlink() {
  source=$1
  target=$2

  if [ -L "$target" ]; then
    echo "Symlink already exists: $target"
    echo "Do you want to overwrite it? (y/N)"
    read -r response
    if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
      rm "$target"
      ln -s "$source" "$target"
      echo "Symlink updated: $target"
    else
      echo "Skipping $target"
    fi
  elif [ -e "$target" ]; then
    echo "File already exists and is not a symlink: $target"
    echo "Skipping $target"
  else
    ln -s "$source" "$target"
    echo "Symlink created: $target"
  fi
}

# fish
mkdir -p ~/.config/fish
create_symlink ../config/fish/conf.fish ~/.config/fish/conf.fish
create_symlink ../config/fish/fish_variables ~/.config/fish/fish_variables

# helix
mkdir -p ~/.config/helix
mkdir -p ~/.config/helix/themes
create_symlink ../config/helix/conf.toml ~/.config/helix/conf.toml
create_symlink ../config/helix/languages.toml ~/.config/helix/languages.toml
create_symlink ../config/helix/themes/catppuccin_mocha.toml ~/.config/helix/themes/catppuccin_mocha.toml
create_symlink ../config/helix/themes/solarized_light.toml ~/.config/helix/themes/solarized_light.toml

# zellij
mkdir -p ~/.config/zellij
mkdir -p ~/.config/zellij/layouts
create_symlink ../config/zellij/conf.kdl ~/.config/zellij/conf.kdl
create_symlink ../config/zellij/zellig/layouts/default.kdl ~/.config/zellij/layouts/default.kdl

# browsh
mkdir -p ~/.config/browsh
create_symlink ../config/browsh/config.toml ~/.config/browsh/config.toml
