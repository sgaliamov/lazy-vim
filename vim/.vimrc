" This file contains universal configuraiton which works in all editors and IDE.
" If some option does not work or has no effect in some IDE, comment it, and leave a note.

let mapleader = " "
let maplocalleader = "\\"

" need `unnamed` for visual studio
" nvim [+], vcode [+], vs [+]
set clipboard=unnamed,unnamedplus



" =========== ALL MODES ============

" Mapping double pressing of the leader key to Escape provides a quick way to exit various modes.
" nvim [+], vcode [+], vs [+]
map <leader><leader> <Esc>

" nvim [+], vcode [+], vs [+]: <silent> is not supported
noremap <Esc> <Esc>:noh<CR>

" nvim [+], vcode [-]: moves schroll but not the cursor, vs [+]: need to remove other commmands from this binding
" page back
noremap <C-b> <C-b>zz
" 1/2 page up
noremap <C-u> <C-u>zz
" 1/2 page down
noremap <C-d> <C-d>zz
" page forward
noremap <C-f> <C-f>zz

" ============ INSERT ==============

" Initiating   visual mode from regular selection with Shift and arrows.
" nvim [+], vcode [+], vs [+]
" need to configure `keybindings.json` in vscode to enable vim bindings.
inoremap <S-Right> <Esc><Right>viw
inoremap <S-Left> <Esc>viwo
inoremap <S-Up> <Esc>Vk
inoremap <S-Down> <Esc>Vj
inoremap <S-Home> <Esc>v^
" `^ moves cursor to the original postion after entering normal mode preventing default shifting when Esc is pressed.
inoremap <s-end> <Esc>`^v$

" nvim [+], vcode [-]: have to use `vscode-neovim.compositeKeys`, vs [+]
imap jj <Esc>`^
" " does not work if press c and <Esc> in normal mode
" " noremap! <Esc> <Esc>:noh<CR>


" NOTES:
" vim.fn.col function does not work in vscode













" ============ NORMAL ==============


" " Changing the inner word without yanking provides a seamless editing experience.
" nnoremap <leader>c "_ciw

" " replace inner word with buffer
" nnoremap <leader>r viwp

" " todo: test in other IDEs. in vscode changes selected text without copy.
" " vnoremap <leader>c <Esc>"_ciw

" " Deleting a word without yanking ensures text removal without affecting the yank register.
" nnoremap <leader>d "_daw

" " Split a line after the cursor and move to the new line.
" nnoremap <leader>j a<CR><Esc>==

" " Split a line after the cursor and stay.
" nnoremap <leader>J m`a<CR><Esc>``==

" " Select a whole word.
" nnoremap <leader>v viw

" " Yanking the inner word ensures efficient copying without affecting the default yank register.
" nnoremap <leader>y yiw

" " Deleting the character under the cursor without yanking improves text manipulation.
" nnoremap x "_x

" " Cut a word.
" noremap <leader>x ciw


" " ============ VISUAL ==============

" " Pasting over the selection without yanking the replaced text ensures precise text replacement.
" vnoremap p "_dP

" vnoremap <C-c> y

" vnoremap i <Esc>



" " Changing the inner word without yanking provides a seamless editing experience.
" nnoremap <leader>c "_ciw

" " replace inner word with buffer
" nnoremap <leader>r viwp

" " todo: test in other IDEs. in vscode changes selected text without copy.
" vnoremap <leader>c <Esc>"_ciw

" " Deleting a word without yanking ensures text removal without affecting the yank register.
" nnoremap <leader>d "_daw

" " Split a line after the cursor and move to the new line.
" nnoremap <leader>j a<CR><Esc>==

" " Split a line after the cursor and stay.
" nnoremap <leader>J m`a<CR><Esc>``==

" " Select a whole word.
" nnoremap <leader>v viw

" " Yanking the inner word ensures efficient copying without affecting the default yank register.
" nnoremap <leader>y yiw

" " Deleting the character under the cursor without yanking improves text manipulation.
" nnoremap x "_x

" " Cut a word.
" noremap <leader>x ciw


" " ============ VISUAL ==============

" " Pasting over the selection without yanking the replaced text ensures precise text replacement.
" vnoremap p "_dP

" vnoremap <C-c> y


" " ============ NORMAL ==============


" " Changing the inner word without yanking provides a seamless editing experience.
" nnoremap <leader>c "_ciw

" " replace inner word with buffer
" nnoremap <leader>r viwp

" " todo: test in other IDEs. in vscode changes selected text without copy.
" vnoremap <leader>c <Esc>"_ciw

" " Deleting a word without yanking ensures text removal without affecting the yank register.
" nnoremap <leader>d "_daw

" " Split a line after the cursor and move to the new line.
" nnoremap <leader>j a<CR><Esc>==

" " Split a line after the cursor and stay.
" nnoremap <leader>J m`a<CR><Esc>``==

" " Select a whole word.
" nnoremap <leader>v viw

" " Yanking the inner word ensures efficient copying without affecting the default yank register.
" nnoremap <leader>y yiw

" " Deleting the character under the cursor without yanking improves text manipulation.
" nnoremap x "_x

" " Cut a word.
" noremap <leader>x ciw


" " ============ VISUAL ==============

" " Pasting over the selection without yanking the replaced text ensures precise text replacement.
" vnoremap p "_dP

" vnoremap <C-c> y
