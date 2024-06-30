" This file contains universal configuraiton which works in all editors and IDE.
" If some option does not work or has no effect in some IDE, comment it, and leave a note.

let mapleader = " "
let maplocalleader = "\\"

" need `unnamed` for visual studio
set clipboard=unnamed,unnamedplus

" ============ BY ACTION ===========

" =========== ALL MODES ============

" Mapping double pressing of the leader key to Escape provides a quick way to exit various modes.
map <leader><leader> <Esc>

noremap <Esc> <Esc>:noh<CR>

" vs [+]: need to remove other commmands from this binding
" vcode [-]: moves schroll but not the cursor
" page back
noremap <C-b> <C-b>zz
" 1/2 page up
noremap <C-u> <C-u>zz
" 1/2 page down
noremap <C-d> <C-d>zz
" page forward
noremap <C-f> <C-f>zz


" ============ NORMAL ==============

nnoremap <leader>r viw"_dp
nnoremap <leader>v viw
noremap <leader>y yiwe
noremap <leader>x "_ciw
noremap <leader>c ciw

nnoremap x "_x

nnoremap <leader>d "_daw

" Split a line after the cursor and move to the new line.
nnoremap <leader>j a<CR><Esc>==

" Split a line after the cursor and stay.
nnoremap <leader>J m`a<CR><Esc>``==


" ============ INSERT ==============

" Initiating visual mode from regular selection with Shift and arrows.
" need to configure `keybindings.json` in vscode to enable vim bindings.
inoremap <S-Right> <Esc><Right>viw
inoremap <S-Left> <Esc>viwo
inoremap <S-Up> <Esc>`^Vk
inoremap <S-Down> <Esc>`^Vj
inoremap <S-Home> <Esc>v^
" `^ moves cursor to the original postion after entering normal mode preventing default shifting when Esc is pressed.
inoremap <s-end> <Esc>`^v$

" vcode [-]: have to use the custom script in `settings.json`:
" "vscode-neovim.compositeKeys": {
"   "jj": {
"     "command": "vscode-neovim.lua",
"     "args": [["vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Esc>`^', true, true, true), 'n', true)"]]
"   }
" },
imap jj <Esc>`^

" by default copy of the character from the line above the cursor position.
" remap to regular redo.
inoremap <C-y> <C-o><C-r>
" by default suspends the Vim process and puts it in the background.
" remap to relular undo.
inoremap <C-z> <C-o>u

" NOTES:
" - vim.fn.col function does not work in vscode
" - noremap! <Esc> <Esc>:noh<CR> does not work if press c and <Esc> in normal mode
" - <silent> is not supported in visual studio



" TO DO:
" inoremap <S-PageUp> <Esc>v<PageUp>
" inoremap <S-PageDown> <Esc>v<PageDown>
" " Pasting over the selection without yanking the replaced text ensures precise text replacement.
" vnoremap p "_dP

" vnoremap <C-c> y

