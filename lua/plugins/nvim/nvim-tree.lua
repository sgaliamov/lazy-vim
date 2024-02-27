-- Disable netrw: https://neovim.io/doc/user/pi_netrw.html#netrw-noload.
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local set_key = require('utils').set_key

local function on_attach(bufnr)
    local api = require 'nvim-tree.api'

    -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    set_key('n', '?', api.tree.toggle_help, 'Help', bufnr)
end

return {
    'nvim-tree/nvim-tree.lua',
    opts = {
        on_attach     = on_attach,
        hijack_cursor = true,
        disable_netrw = true,
    },
    init = function()
        set_key('n', "<leader>t", ':NvimTreeToggle<cr>', 'Tree toggle')
    end,
    dependencies = {
        'nvim-tree/nvim-web-devicons'
    }
}
