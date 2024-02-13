if vim.g.vscode then
    -- VSCode extension

    vim.opt.clipboard = 'unnamedplus'
else
    require("config.lazy")
end

