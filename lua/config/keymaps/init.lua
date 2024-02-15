--[[
Global key mappings.
Plugin specific key mappings are in the pluggin configurations.

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",
]]--

vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

-- Environmen specific configurations.
if vim.g.vscode then
    require("config.keymaps.vscode")
else
    require("config.keymaps.nvim")
end
