" Vundle: https://github.com/gmarik/Vundle.vim
" To install, run :PluginInstall
" To update, run :PluginInstall!
set rtp+=~/.vim/bundle/Vundle.vim/
set rtp+=/usr/local/opt/fzf

call vundle#begin()

" let Vundle manage Bundle
Plugin 'gmarik/Vundle.vim'

" ====== Core utility =====
Plugin 'scrooloose/nerdtree'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'preservim/nerdcommenter'

" ====== Ruby/Rails development =====
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'vim-test/vim-test'
Plugin 'janx/vim-rubytest'

" ===== Syntax =====
" Plugin 'gabrielelana/vim-markdown'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'shime/vim-livedown'
Plugin 'tpope/vim-surround'
Plugin 'sheerun/vim-polyglot'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'dense-analysis/ale'

" ====== Powerline, Statusline, etc. ======
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'itchyny/lightline.vim'
Plugin 'junegunn/fzf.vim'
Plugin 'airblade/vim-gitgutter'
" Plugin 'shinchu/lightline-gruvbox.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'

" ====== Themes =====
" Plugin 'nanotech/jellybeans.vim'
" Plugin 'sonph/onehalf', {'rtp': 'vim/'}
" Plugin 'dracula/vim', {'name':'dracula'}
" Plugin 'joshdick/onedark.vim'
Plugin 'morhetz/gruvbox'
" Plugin 'vwxyutarooo/nerdtree-devicons-syntax'

call vundle#end()

