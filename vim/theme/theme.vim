colorscheme gruvbox

function! Switch_theme()
  if $ITERM_BACKGROUND ==? 'dark'
    set background=light

    silent !osascript -e 'tell app "System Events" to keystroke "y" using {command down, control down}'
    silent !osascript -e 'tell app "System Events" to keystroke "y" using {command down, control down}'

    execute "silent !tmux source-file " . shellescape(expand('~/.tmux/plugins/tmux-gruvbox-light/tmux-gruvbox-light.conf'))

    let $ITERM_BACKGROUND = 'light'
  else
    set background=dark

    silent !osascript -e 'tell app "System Events" to keystroke "t" using {command down, control down}'
    silent !osascript -e 'tell app "System Events" to keystroke "t" using {command down, control down}'

    execute "silent !tmux source-file " . shellescape(expand('~/.tmux/plugins/tmux-gruvbox/tmux-gruvbox-dark.conf'))

    let $ITERM_BACKGROUND = 'dark'
  endif
endfunction

command! SwitchTheme call Switch_theme()
nnoremap <leader>sw :SwitchTheme<cr>

if $ITERM_BACKGROUND ==? 'dark'
  set background=dark
elseif $ITERM_BACKGROUND ==? 'light'
  set background=light
else
  call Switch_theme()
endif
