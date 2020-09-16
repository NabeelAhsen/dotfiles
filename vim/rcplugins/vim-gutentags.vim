set statusline+=%{gutentags#statusline()}

let g:gutentags_add_default_project_roots = 0
let g:gutentags_project_root = ['package.json', '.git']

let g:gutentags_cache_dir = expand('~/.cache/vim/ctags/')

let g:gutentags_generate_on_new = 1
let g:gutentags_generate_on_missing = 1
let g:gutentags_generate_on_write = 1
let g:gutentags_generate_on_empty_buffer = 0

let g:gutentags_ctags_extra_args = [
      \ '--tag-relative=yes',
      \ '--fields=+ailmnS',
      \ ]

let gutentags_define_advanced_commands = 1
" let gutentags_trace = 1

function! SetLocalTags()
  " spaces must be literally escaped in tags path
  let l:literal_space_escaped = substitute(fnameescape(b:gutentags_files['ctags']), '\ ', '\\\\ ', 'g')
  execute 'setlocal tags^=' . l:literal_space_escaped
endfunction

map <Leader>s :call SetLocalTags()<CR>
