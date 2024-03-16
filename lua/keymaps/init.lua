require('keymaps.utils').map_keys({
  ['<Esc>'] = { '<Esc>:noh<cr>', 'Cancel search highlighting with ESC' },
  ['<leader><leader>'] = { '<nop>', 'Diable space in nomal mode' },

  -- Better yanking.
  ['<leader>c'] = { '"_ciw', 'Change inner word without yanking', m = 'n' },
  ['<leader>x'] = { '"_x', 'Remove without yanking', m = 'n' },
  ['<leader>d'] = { '"_d', 'Delete without yanking' },
})

if vim.g.vscode then
  require('keymaps.vscode')
else
  require('keymaps.nvim')
end
