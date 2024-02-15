vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local function my_on_attach(bufnr)
    local api = require "nvim-tree.api"

    local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    api.tree.open()

    -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
end

return {
    "nvim-tree/nvim-tree.lua",
    opts = {
        on_attach     = my_on_attach,
        hijack_cursor = true,
        disable_netrw = true,
    },
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    }
}
