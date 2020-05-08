#!/usr/bin/env bash

source ./script/utils.sh

VIMDIR=$HOME/.vim

# Install Vundle
install_vundle () {
  local src=$1
  local target="$VIMDIR/bundle/Vundle.vim"

  local skip=false

  if [ -d "$target" ]; then
    info "Vundle.vim is already installed, skipping"
  else
    git clone "$src" "$target"
  fi

}

install_vundle "https://github.com/VundleVim/Vundle.vim.git"
