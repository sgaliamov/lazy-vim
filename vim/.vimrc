" This file contains universal configuraiton which works in all editors and IDE.
" If some option does not work or has no effect in some IDE, comment it, and leave a note.

let mapleader = " "
let maplocalleader = "\\"

" need `unnamed` for visual studio
set clipboard=unnamed,unnamedplus


" ============ INSERT ==============

" Initiating visual mode from regular selection with Shift and arrows.

" inoremap <S-Left> <Esc>v<Left>

" inoremap <silent> <expr> <S-Right> (col('.') == 1 ? '<Esc>v/[^a-z]<CR><Left>:noh<CR>' : '<Esc><Right>v/[^a-z]<CR><Left>:noh<CR>')

" ============ NORMAL ==============

" Mapping double pressing of the leader key to Escape provides a quick way to exit various modes.
noremap <leader><leader> <Esc>

" Pressing Escape in normal mode clears search highlighting, improving visual clarity.
noremap <Esc> :noh<CR><Esc>

" ============ NORMAL ==============

" Mapping double pressing of the leader key to Escape provides a quick way to exit various modes.
" noremap <leader><leader> <Esc>

" Pressing Escape in normal mode clears search highlighting, improving visual clarity.
" noremap <Esc> :noh<CR><Esc>

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


" " Scrolling half a page and centering the cursor.
" " does not work in vscode.
" " nnoremap <C-d> <C-d>zz
" " nnoremap <C-u> <C-u>zz

" " does not work if press c and <Esc> in normal mode
" " noremap! <Esc> <Esc>:noh<CR>

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

" vnoremap i <Esc>


" " Scrolling half a page and centering the cursor.
" " does not work in vscode.
" " nnoremap <C-d> <C-d>zz
" " nnoremap <C-u> <C-u>zz

" " does not work if press c and <Esc> in normal mode
" " noremap! <Esc> <Esc>:noh<CR>

" imap jj <Esc>

" inoremap <C-r> <Esc>:reg<CR>"
" a

" " ============ NORMAL ==============

" " Mapping double pressing of the leader key to Escape provides a quick way to exit various modes.
" noremap <leader><leader> <Esc>

" " Pressing Escape in normal mode clears search highlighting, improving visual clarity.
" " noremap <Esc> :noh<CR><Esc>

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

" vnoremap i <Esc>


" " Scrolling half a page and centering the cursor.
" " does not work in vscode.
" " nnoremap <C-d> <C-d>zz
" " nnoremap <C-u> <C-u>zz

" " does not work if press c and <Esc> in normal mode
" " noremap! <Esc> <Esc>:noh<CR>
