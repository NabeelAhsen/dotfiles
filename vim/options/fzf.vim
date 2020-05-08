" FZF for vim
command! -bang -nargs=*  All
  \ call fzf#run(fzf#wrap({'source': 'rg --files --hidden --glob "!{node_modules/*,.git/*}"', 'down': '40%', 'options': '--multi --reverse' }))

nnoremap <silent> <C-p> :All<CR>

