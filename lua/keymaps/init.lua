require('keymaps.utils').map_keys {
  ['<Esc>'] = { '<Esc>:noh<cr>', 'Cancel search highlighting with ESC' },
  ['<leader><leader>'] = { '<nop>', 'Diable space in nomal mode' },

  -- Better yanking.
  ['<leader>c'] = { '"_ciw', 'Change inner word without yanking', m = 'n' },
  ['<leader>d'] = { '"_d', 'Delete without yanking' },
  ['<leader>y'] = { '"+y', 'Yank in clipboard' },
  ['<leader>Y'] = { '"+Y', 'Yank line in clipboard' },
  ['x'] = { '"_x', 'Remove without yanking', m = 'n' },
  ['p'] = { '"_dP', 'Replace without yanking', m = 'v' }, -- use <Shift-Insert> to paste from clipboard.

  --   " surrounding workaround
  -- nnoremap s <NOP>
  -- nnoremap sd <NOP>
  -- vnoremap s <NOP>
  --
  -- " surround inner word
  -- nnoremap s" ciw"<C-r>""<Esc>
  -- nnoremap s' ciw'<C-r>"'<Esc>
  -- nnoremap s, ciw<<C-r>"><Esc>
  -- nnoremap s9 ciw(<C-r>")<Esc>
  -- nnoremap s[ ciw[<C-r>"]<Esc>
  -- nnoremap s{ ciw{<C-r>"}<Esc>
  --
  -- " surround visual selected text
  -- vnoremap s" c"<C-r>""<Esc>
  -- vnoremap s' c"<C-r>"'<Esc>
  -- vnoremap s, c<<C-r>"><Esc>
  -- vnoremap s9 c(<C-r>")<Esc>
  -- vnoremap s[ c[<C-r>"]<Esc>
  -- vnoremap s{ c{<C-r>"}<Esc>
  --
  -- " delete surround
  -- nnoremap sd" di"h"_2s<C-r>"<Esc>
  -- nnoremap sd' di'h"_2s<C-r>"<Esc>
  -- nnoremap sd, di<h"_2s<C-r>"<Esc>
  -- nnoremap sd9 di(h"_2s<C-r>"<Esc>
  -- nnoremap sd[ di[h"_2s<C-r>"<Esc>
  -- nnoremap sd{ di{h"_2s<C-r>"<Esc>
}

if vim.g.vscode then
  require 'keymaps.vscode'
else
  require 'keymaps.nvim'
end
