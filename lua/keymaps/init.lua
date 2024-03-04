require('keymaps.utils').map_keys({
  ['<Esc>'] = { '<Esc>:noh<cr>', 'Cancel search highlighting with ESC' },
  ['jj'] = { '<Esc>', 'Fast excape', m = 'i', opts = { remap = true } },
  ['<leader><leader>'] = { '<nop>', 'Diable space in nomal mode' },

  -- Better existing remappings.
  ['<C-d>'] = { '<C-d>zz', 'Scroll down & center' },
  ['<C-u>'] = { '<C-u>zz', 'Scroll up & center' },

  -- Better yanking.
  ['<leader>p'] = { '"_dP', 'Replace without yanking', m = 'v' },
  ['<leader>c'] = { '"_ciw', 'Change inner word without yanking', m = 'n' },
  ['<leader>d'] = { '"_d', 'Delete without yanking' },
  ['x'] = { '"_x', 'Remove without yanking' },
  ['<leader>yy'] = { '"+yiw', 'Yank inner word in clipboard' },
})

if vim.g.vscode then
  require('keymaps.vscode')
else
  require('keymaps.nvim')
end
