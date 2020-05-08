" Maximum value is 10,000
set history=10000
set noswapfile		" https://thoughtbot.com/blog/global-gitignore#comment-458413287
set ruler		" show cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set laststatus=2	" always display the status line
set cursorline		" highlight the line the cursor is on
set smarttab		" insert tabs on the start of a line according to shiftwidth, not tabstop
set modelines=2		" inspect top/bottom 2 lines for modeline
set scrolloff=999	" when scrolling, keep cursor in the middle
" set shiftaround		" when at 3 spaces and I hit >>, go to 4, not 5

" Copy to the system clipboard
set clipboard=unnamed

" Persistent undo
set undofile " create FILE.un~ files for persistent undo
silent !mkdir ~/.vim/undodir > /dev/null 2>&1
set undodir=~/.vim/undodir

" Create backups: when this is needed, see gabebw's option.vim file
" https://github.com/gabebw/dotfiles/blob/7c5ba2fd230df4dd2432019c72c3def2b75f1d45/vim/options.vim

set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent
set copyindent " copy previous indentation on autoindentation 
set showmatch " show matching parenthesis

" make searches case-sensitive only if they contain upper-case characters
set ignorecase smartcase

" open below and to the right, the way you read a page
set splitbelow splitright

" Meta characters
set showbreak="@" " prepend to wrapped lines

set noerrorbells visualbell t_vb=
