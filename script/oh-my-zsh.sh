#!/bin/bash

source ./script/utils.sh

if sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended ; then
  success "Oh-my-zsh was installed."
else
  info "Oh-my-zsh was not installed."
fi

