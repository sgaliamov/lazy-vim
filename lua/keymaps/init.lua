-- sync with .vsvimrc

require('keymaps.utils').map_keys {
  { '<Esc>', ':noh<cr><Esc>', 'Cancel search highlighting with ESC' },
  { '<leader><leader>', '<nop>', 'Diable Space in nomal, visual and options modes' },

  -- Better yanking.
  { 'x', '"_x', 'Remove without yanking', m = 'n' },
  { 'p', '"_dP', 'Replace without yanking', m = 'v' }, -- use <Shift-Insert> to paste from clipboard.
  { '<leader>c', '"_ciw', 'Change inner word without yanking', m = 'n' },
  { '<leader>d', '"_diw', 'Delete inner word without yanking' },
  { '<leader>x', 'ciw', 'Cut inner word' },
  { '<leader>y', '"+y', 'Yank in clipboard' },
  { '<leader>C', '"_ct', 'Change without yanking', m = 'n' },
  { '<leader>D', '"_dt', 'Delete without yanking' },
  { '<leader>Y', '"+Y', 'Yank line in clipboard' },
  { '<leader>s', ':w', 'Save file' },

  -- Surrounding
  { 's', '<nop>', 'Surround...', m = { 'v', 'n' } },
  { 'sd', '<nop>', 'Delete surrounding...', m = { 'v', 'n' } },

  -- Surround inner word
  { "s'", "ciw'<C-r>\"'<Esc>", "Surround with ''", m = 'n' },
  { 's"', 'ciw"<C-r>""<Esc>', 'Surround with ""', m = 'n' },
  { 's`', 'ciw`<C-r>"`<Esc>', 'Surround with ``', m = 'n' },
  { 's,', 'ciw<<C-r>"><Esc>', 'Surround with <>', m = 'n' },
  { 's9', 'ciw(<C-r>")<Esc>', 'Surround with ()', m = 'n' },
  { 's[', 'ciw[<C-r>"]<Esc>', 'Surround with []', m = 'n' },
  { 's{', 'ciw{<C-r>"}<Esc>', 'Surround with {}', m = 'n' },

  -- Surround visually selected text
  { "s'", "c'<C-r>\"'<Esc>", "Surround with ''", m = 'v' },
  { 's"', 'c"<C-r>""<Esc>', 'Surround with ""', m = 'v' },
  { 's`', "c'<C-r>`'<Esc>", 'Surround with ``', m = 'v' },
  { 's,', 'c<<C-r>"><Esc>', 'Surround with <>', m = 'v' },
  { 's9', 'c(<C-r>")<Esc>', 'Surround with ()', m = 'v' },
  { 's[', 'c[<C-r>"]<Esc>', 'Surround with []', m = 'v' },
  { 's{', 'c{<C-r>"}<Esc>', 'Surround with {}', m = 'v' },

  -- Delete surrounding
  { "sd'", 'di\'h"_2s<C-r>"<Esc>', m = 'n' },
  { 'sd"', 'di"h"_2s<C-r>"<Esc>', m = 'n' },
  { 'sd`', 'di`h"_2s<C-r>`<Esc>', m = 'n' },
  { 'sd,', 'di<h"_2s<C-r>"<Esc>', m = 'n' },
  { 'sd9', 'di(h"_2s<C-r>"<Esc>', m = 'n' },
  { 'sd[', 'di[h"_2s<C-r>"<Esc>', m = 'n' },
  { 'sd{', 'di{h"_2s<C-r>"<Esc>', m = 'n' },

  -- Change surrounding
  { '\'"', 'di\'h"_2s"<C-r>""<Esc>', m = 'n' },
  { '"\'', 'di"h"_2s\'<C-r>"\'<Esc>', m = 'n' },
}

if vim.g.vscode then
  require 'keymaps.vscode-keys'
else
  require 'keymaps.nvim'
end
