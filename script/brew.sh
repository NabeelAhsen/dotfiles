#!/usr/bin/env bash

source ./script/utils.sh

# Install homebrew
install_brew () {
  local src=$1

  if test ! "$( command -v brew )"; then
    info "Installing homebrew"
    ruby -e "$( curl -fsSL "$(src)" )"
  else
    success "Homebrew already installed"
  fi

  info "Installing dependencies using brewfile"
  if brew bundle ; then
    success "All brew dependencies installed"
  else
    info "Some brew dependencies failed to install. See output above."
  fi
}

install_brew "https://raw.githubusercontent.com/Homebrew/install/master/install"

