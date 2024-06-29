local defaults = { noremap = true, silent = true }

if vim.g.vscode then
  require 'keymaps.vscode'
else
  require 'keymaps.nvim'
end

vim.keymap.set(
  'i',
  '<S-Right>',
  function ()
    if vim.fn.col('.') == 1 then
      return "<Esc>v/[^a-z]<CR><Left><Cmd>nohlsearch<CR>"
    else
      return '<Esc><Right>v/[^a-z]<CR><Left><Cmd>nohlsearch<CR>'
    end
  end,
  { silent = true, noremap = true, expr = true })
