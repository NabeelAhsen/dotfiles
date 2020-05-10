# Nabeel's dotfiles

These are my ever-changing vim, zsh, git, tmux, and other config files and 
utility scripts.

I created these dotfiles after having to setup my development environment many 
times within the same year on different laptops. My dotfiles are personalized, 
but I believe they can be easily adopted or extended.

## Getting started

```sh
$ ./install.sh
  …
$ zsh
```

I cannot guarantee that everything will install without a hitch. However, this
installer _should_ do the following things:

1. Installs Homebrew and any dependencies outlined in the [Brewfile](./Brewfile)
2. Links the sample dotfiles to your `$HOME` locations
3. Sources a vim and zsh environment

Once installation is complete, you will need to run `zsh`. You can install the
vim plugins defined in [vundle.vim](./vim/vundle/vundle.vim) and
restart vim by opening vim and running the following commands in normal mode:

```
:PluginInstall
:source ~/.vimrc
```

## Why dotfiles?

[Dotfiles](https://wiki.archlinux.org/index.php/Dotfiles) are used to organize,
backup, restore, and sync the preferences and settings for your toolbox. They
are usually version-controlled and are distributed across your various systems
and often change over time.

The philosophy behind dotfiles is that they are personal, yet customizable
enough that anyone can adopt and extend them. There is a huge community of
developers who share their dotfiles, and so one of the benefits of sharing your
dotfiles is that you can learn from others while giving back to the community.

## Dotfile components

Files with the `.symlink` suffix are automatically linked to `$HOME` and are
responsible for sourcing their own configuration files.

### tmux

The corresponding dotfile is [`tmux.conf.symlink`](./tmux/tmux.conf.symlink).
This file personalizes my tmux experience by rebinding the prefix key to
`CTRL + s` and binding pane-selection keys to be more similar to vim.

I find tmux particularly useful for switching between workflows and managing
separate projects I'm working on.

### vim

Following vim philosophy, my vim bindings are personal to me. They are
sourced by linking [`vimrc.symlink`](./vim/vimrc.symlink). This resource file
is then responsible for sourcing nested configuration files which follow the
name format `*.vim`. This includes plugins defined in
[`vundle.vim`](./vim/vundle/vundle.vim) and their corresponding [plugin
configurations](./vim/rcplugins).  

### zsh

The dotfile that is linked to `$HOME` here is
[`zshrc.symlink`](./zsh/zshrc.symlink). The configuration for my shell is
fairly simple, and I find that [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh) 
provides a great set of plugins and aliases to get more out of my shell. 
This may change in the future as my requirements from my shell may change.

## Thanks

Most dotfiles are inspired by other people's dotfile configurations. As such, I
believe that dotfiles are meant to be shared. These are some dotfiles that
either inspired me or that I found useful to borrow from.

* Chris Toomey's [dotfiles](https://github.com/christoomey/dotfiles) 
* Gabe Berke-Williams' [dotfiles](https://github.com/gabebw/dotfiles)
* Zach Holman's [dotfiles](https://github.com/holman/dotfiles)
* And many more …

