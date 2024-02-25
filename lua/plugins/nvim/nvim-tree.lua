vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local function my_on_attach(bufnr)
    local api = require "nvim-tree.api"
    local u = require "utils"
    local set = u.set_key


    -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    set('n', '?', api.tree.toggle_help, 'Help', bufnr)
    -- vim.keymap.set("n", "l", edit_or_open, opts("Edit Or Open"))
    -- vim.keymap.set("n", "L", vsplit_preview, opts("Vsplit Preview"))
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
