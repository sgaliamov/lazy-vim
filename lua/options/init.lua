-- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.mapleader = ' '
vim.g.maplocalleader = ','

if vim.g.vscode then
  require 'options.vscode'
else
  require 'options.nvim'
end
