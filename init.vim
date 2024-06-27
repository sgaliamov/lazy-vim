source .vimrc

if exists('g:vscode')
  " THEME CHANGER
  function! SetCursorLineNrColorInsert(mode)
    " Insert mode: blue
    if a:mode == "i"
        call VSCodeNotify('nvim-theme.insert')

    " Replace mode: red
    elseif a:mode == "r"
        call VSCodeNotify('nvim-theme.replace')
    endif
  endfunction

  augroup CursorLineNrColorSwap
    autocmd!
    autocmd ModeChanged *:[vV\x16]* call VSCodeNotify('nvim-theme.visual')
    autocmd ModeChanged *:[R]* call VSCodeNotify('nvim-theme.replace')
    autocmd InsertEnter * call SetCursorLineNrColorInsert(v:insertmode)
    autocmd InsertLeave * call VSCodeNotify('nvim-theme.normal')
    autocmd CursorHold * call VSCodeNotify('nvim-theme.normal')
    autocmd ModeChanged [vV\x16]*:* call VSCodeNotify('nvim-theme.normal')
  augroup END
endif

lua << EOF
  -- to make work may need to create the symlink:
  -- mklink /d C:\tools\neovim\nvim-win64\bin\lua %userprofile%\AppData\Local\nvim
  require('init-neovim')
EOF
