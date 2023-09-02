-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>el", "<cmd>set keymap=<cr>", { desc = "Set english language" })
vim.keymap.set("n", "<leader>rl", "<cmd>set keymap=russian-jcukenwin<cr>", { desc = "Set russian language" })
