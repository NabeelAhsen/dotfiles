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
    if git clone "$src" "$target" ; then
      success "Vundle.vim installed to $target"
    fi
  fi

}

install_vundle "https://github.com/VundleVim/Vundle.vim.git"
