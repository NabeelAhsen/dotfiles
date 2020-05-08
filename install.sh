#!/bin/bash

set -e
set -o pipefail

# MacOS specific installation
echo -e "\\n> ========== Installing OSX dependencies"
if [ "$(uname)" == "Darwin" ]; then
  echo -e "\\n>\\tInstalling Homebrew dependencies"
  source script/brew.sh
  echo -e "\\n>\\tInstalling oh-my-zsh"
  source script/oh-my-zsh.sh
fi

echo -e "\\n> ========== Linking dotfiles"
source script/link.sh

echo -e "\\n> ========== Installing vim dependencies"
source script/vim.sh

