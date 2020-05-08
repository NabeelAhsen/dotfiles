#!/usr/bin/env bash

DOTFILE=$HOME/dotfiles

# Helper functions to log output
info () {
  printf "\r  [ \033[00;34m..\033[0m ] $1\n"
}

user () {
  printf "\r  [ \033[0;33m??\033[0m ] $1\n"
}

success () {
  printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

fail () {
  printf "\r\033[2K  [\033[0;31mFAIL\033[0m] $1\n"
  echo ''
  exit
}

link_file () {
  local src=$1 
  local dst="$HOME/.$( basename "$src" '.symlink' )"

  local overwrite= skip=
  local action=

  if [ "$overwrite_all" == "false" ] && [ "$skip_all" == "false" ]; then
    if [ -e "$dst" ]; then
      user "File already exists: $dst, what do you want to do?\n\
        [s]kip, [S]kip all, [o]verwrite, [O]verwrite all?"
      read -n 1 action
      
      case "$action" in
        o )
          overwrite=true;;
        O )
          overwrite_all=true;;
        s )
          skip=true;;
        S )
          skip_all=true;;
        * )
          ;;
      esac
    fi
  fi
  
  # parameter expansion
  # TODO: Make a note of how this works later
  overwrite=${overwrite:-$overwrite_all}
  skip=${skip:-$skip_all}
  
  if [ "$overwrite" == "true" ]; then
    rm -rf "$dst"
    success "removed $dst"
  fi
  if [ "$skip" == "true" ]; then
    success "skipped $src"
  fi

  # if this is a non-skippable event
  if [ "$skip" != "true" ]; then
    ln -s "$src" "$dst"
    success "linked $src to $dst"
  fi
}

install_dotfiles () {
  echo -e "\\n>\\tCreating symlinks"
  
  linkables=$( find -H "$DOTFILE" -maxdepth 3 -name '*.symlink' )

  local overwrite_all=false skip_all=false
  
  for file in $linkables ; do
  	target="$HOME/.$( basename "$file" '.symlink' )"
  	link_file "$file"
  done
}

install_dotfiles
