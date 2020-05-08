#!/usr/bin/env bash

set -e
set -o pipefail

# MacOS specific installation
if [ "$(uname)" == "Darwin" ]; then
  echo -e "\\n> ========== Installing Homebrew dependencies"
  source script/brew.sh
fi

echo -e "\\n> ========== Installing dotfiles"
source script/link.sh

echo -e "\\n> ========== Installing vim dependencies"
source script/vim.sh

