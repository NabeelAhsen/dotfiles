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
Plugin 'Shougo/neocomplete.vim'
Plugin 'mustache/vim-mustache-handlebars'

" ====== Ruby/Rails development =====
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'

" ===== Syntax =====
Plugin 'gabrielelana/vim-markdown'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'shime/vim-livedown'

" ====== Powerline, Statusline, etc. ======
Plugin 'itchyny/lightline.vim'
Plugin 'junegunn/fzf.vim'

" ====== Themes =====
" Plugin 'nanotech/jellybeans.vim'
Plugin 'sonph/onehalf', {'rtp': 'vim/'}

call vundle#end()
