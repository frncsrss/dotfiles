#!/bin/bash

# Create symlinks dotfiles into home directory

dir=$HOME/dotfiles

for file in .bash_profile .bashrc .bash_prompt .gitconfig .gitignore .vimrc; do
  source="$dir/$file"
  dest="$HOME/$file"
  ln -sfvn "$source" "$dest"
done
