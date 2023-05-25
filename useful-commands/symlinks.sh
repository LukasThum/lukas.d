#!/bin/bash

function help() {
  echo "Usage: $0 [OPTION]"
  echo "Create symlinks for configuration files and directories."
  echo ""
  echo "Options:"
  echo "  -f, --force       Overwrite existing symlinks without prompting"
  echo "  -h, --help        Display this help message and exit"
}

force=0

while [[ $# -gt 0 ]]; do
  case "$1" in
    -f|--force)
      force=1
      shift
      ;;
    -h|--help)
      help
      exit 0
      ;;
    *)
      echo "Unknown option: $1"
      help
      exit 1
      ;;
  esac
done

function create_symlink() {
  source=$1
  target=$2

  script_dir=$(dirname "$(realpath "$0")")
  source=$(realpath "$script_dir/$source")

  if [ -L "$target" ]; then
    echo "Symlink already exists: $target"
    if [ $force -eq 1 ]; then
      response="y"
    else
      echo "Do you want to overwrite it? (y/N)"
      read -r response
    fi

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

# vscode
create_symlink "../config/vscode/keybindings.json" ~/Library/Application\ Support/Code\ -\ Insiders/User/keybindings.json
create_symlink "../config/vscode/settings.json" ~/Library/Application\ Support/Code\ -\ Insiders/User/settings.json

# minecraft
create_symlink "../minecraft" "~/Library/Application Support/minecraft/saves/lukas"

# fish
mkdir -p ~/.config/fish
create_symlink "../config/fish/config.fish" ~/.config/fish/config.fish
create_symlink "../config/fish/fish_variables" ~/.config/fish/fish_variables

# helix
mkdir -p ~/.config/helix
mkdir -p ~/.config/helix/themes
create_symlink "../config/helix/config.toml" ~/.config/helix/config.toml
create_symlink "../config/helix/languages.toml" ~/.config/helix/languages.toml
create_symlink "../repos/helix/runtime" ~/.config/helix/runtime
create_symlink "../config/helix/themes/catppuccin_mocha.toml" ~/.config/helix/themes/catppuccin_mocha.toml
create_symlink "../config/helix/themes/solarized_light.toml" ~/.config/helix/themes/solarized_light.toml

# zellij
mkdir -p ~/.config/zellij
mkdir -p ~/.config/zellij/layouts
create_symlink "../config/zellij/config.kdl" ~/.config/zellij/config.kdl
create_symlink "../config/zellij/layouts/default.kdl" ~/.config/zellij/layouts/default.kdl

# browsh
mkdir -p ~/.config/browsh
create_symlink "../config/browsh/config.toml" ~/.config/browsh/config.toml

