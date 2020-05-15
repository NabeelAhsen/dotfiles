" fzf - the fuzzy finder for vim
let g:fzf_files_options =
  \ '--reverse ' .
  \ '--preview "(coderay {} || cat {}) 2> /dev/null | head -'.&lines.'"'
let g:fzf_layout = { 'down': '~60%' }

nnoremap \ :Ag<space>
nnoremap \| :Ag <C-R><C-W><cr>:cw<cr>

nnoremap <silent> <C-p> :Files<CR>

