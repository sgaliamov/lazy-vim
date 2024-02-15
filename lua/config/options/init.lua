vim.opt.clipboard = "unnamedplus"

if vim.g.vscode then
    require("config.options.vscode")
else
    require("config.options.nvim")
end
