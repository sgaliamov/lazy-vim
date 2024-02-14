vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

if vim.g.vscode then
    require("config.keymaps.vscode")
else
    require("config.keymaps.teminal")
end

