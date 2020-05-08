#!/bin/bash

source ./script/utils.sh

VIMDIR=$HOME/.vim

link_vim () {
  local skip=false overwrite=
  local action=

  if [ -e $VIMDIR ] ; then
    user "$VIMDIR exists already, what do you want to do?\n\
      [s]kip, [o]verwrite?"
    read -n 1 action
    case "$action" in
      s )
        skip=true;;
      o )
        overwrite=true;;
      * )
        ;;
    esac
    info "[$action]"
  fi

  if [ "$overwrite" == "true" ] ; then
    rm -rf "$VIMDIR"
  fi
  if [ "$skip" == "false" ] ; then
    ln -sv "$PWD/vim" "$VIMDIR"
    success "$VIMDIR linked."
  else
    info "Linking $VIMDIR skipped"
  fi
}

install_vundle () {
  local src=$1
  local target="$VIMDIR/bundle/Vundle.vim"

  if [ -d "$target" ]; then
    info "Vundle.vim is already installed, skipping"
  else
    if git clone "$src" "$target" ; then
      success "Vundle.vim installed to $target"
    fi
  fi
}

link_vim
install_vundle "https://github.com/VundleVim/Vundle.vim.git"

