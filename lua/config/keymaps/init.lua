-- Environmen specific configurations.
if vim.g.vscode then
    require("config.keymaps.vscode")
else
    require("config.keymaps.nvim")
end
