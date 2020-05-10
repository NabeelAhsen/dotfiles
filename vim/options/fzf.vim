" fzf - the fuzzy finder for vim
let g:fzf_files_options =
  \ '--reverse ' .
  \ '--preview "(coderay {} || cat {}) 2> /dev/null | head -'.&lines.'"'
let g:fzf_layout = { 'down': '~60%' }

nnoremap <silent> <C-p> :Files<CR>

