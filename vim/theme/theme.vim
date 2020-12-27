" colorscheme onehalflight

function! Switch_theme()
  if $ITERM_BACKGROUND ==? 'dark'
    colorscheme onehalflight
    " set background=light

    silent !osascript -e 'tell app "System Events" to keystroke "y" using {command down, control down}'

    " execute "silent !tmux source-file " . shellescape(expand('~/.tmux/plugins/tmux-gruvbox-light/tmux-gruvbox-light.conf'))
    execute "silent !tmux source-file " . shellescape(expand('~/.tmux/plugins/tmux-colors-solarized/tmuxcolors-light.conf'))

    let $ITERM_BACKGROUND = 'light'
  else
    colorscheme onehalfdark
    " set background=dark

    silent !osascript -e 'tell app "System Events" to keystroke "t" using {command down, control down}'

    " execute "silent !tmux source-file " . shellescape(expand('~/.tmux/plugins/tmux-gruvbox/tmux-gruvbox-dark.conf'))
    execute "silent !tmux source-file " . shellescape(expand('~/.tmux/plugins/tmux-colors-solarized/tmuxcolors-dark.conf'))

    let $ITERM_BACKGROUND = 'dark'
  endif
endfunction

command! SwitchTheme call Switch_theme()
nnoremap <leader>sw :SwitchTheme<cr>

if $ITERM_BACKGROUND ==? 'light'
  colorscheme onehalflight
  " set background=dark
else
  colorscheme onehalfdark
  " set background=light
" else
  " call Switch_theme()
endif
