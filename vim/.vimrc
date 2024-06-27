" This file contains universal configuraiton which works in all editors and IDE.
" If some option does not work in

let mapleader = " "
let maplocalleader = "\\"

set clipboard=unnamed,unnamedplus

" Mapping double pressing of the leader key to Escape provides a quick way to exit various modes.
noremap <leader><leader> <Esc>

" Pressing Escape in normal mode clears search highlighting, improving visual clarity.
noremap <Esc> :noh<CR><Esc>

" Initiating visual mode from regular selection with Shift and arrows.

inoremap <S-Left> <Esc>

inoremap <S-Right> <Esc>


" to review

" Changing the inner word without yanking provides a seamless editing experience.
nnoremap <leader>c "_ciw

" replace inner word with buffer
nnoremap <leader>r viwp

" todo: test in other IDEs. in vscode changes selected text without copy.
vnoremap <leader>c <Esc>"_ciw

" Deleting a word without yanking ensures text removal without affecting the yank register.
nnoremap <leader>d "_daw

" Split a line after the cursor and move to the new line.
nnoremap <leader>j a<CR><Esc>==

" Split a line after the cursor and stay.
nnoremap <leader>J m`a<CR><Esc>``==

" Select a whole word.
nnoremap <leader>v viw

" Yanking the inner word ensures efficient copying without affecting the default yank register.
nnoremap <leader>y yiw

" Deleting the character under the cursor without yanking improves text manipulation.
nnoremap x "_x

" Cut a word.
noremap <leader>x ciw

" Pasting over the selection without yanking the replaced text ensures precise text replacement.
vnoremap p "_dP

vnoremap <C-c> y

vnoremap i <Esc>

imap jj <Esc>

" Scrolling half a page and centering the cursor.
" does not work in vscode.
" nnoremap <C-d> <C-d>zz
" nnoremap <C-u> <C-u>zz

" does not work if press c and <Esc> in normal mode
" noremap! <Esc> <Esc>:noh<CR>
