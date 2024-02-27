-- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.mapleader = ' '
vim.g.maplocalleader = ','

require('config.keymaps')
require('config.lazy')
require('config.options')
