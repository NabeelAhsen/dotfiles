#!/usr/bin/env bash

set -e
set -o pipefail

echo -e "\\n> ========== Installing dotfiles"
source script/link.sh

echo -e "\\n> ========== Installing vim dependencies"
source script/vim.sh
