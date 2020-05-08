# dotfiles
My ever-changing vim, zsh, git, tmux, and other config files and utility scripts.

I created these dotfiles after having to setup my development environment many times within the same year on different laptops. My dotfiles are pretty personalized, but I believe they can easily be adopted or extended.

## Getting started

```bash
$ ./install.sh
$ zsh
```

This installer does the following things:
1. Installs Homebrew and any dependencies outlined in the [Brewfile](./Brewfile)
2. Links the sample dotfiles to your `$HOME` locations
3. Sets up a vim and zsh environment

Once installation is complete, you will need to run `zsh` and install the vim plugins that are defined in [vundle.vim](./vim/vundle/vundle.vim) and restarted vim.

```sh
:PluginInstall
```

## Dotfile components

### tmux

### vim

### zsh

## Credits

