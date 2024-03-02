local map = require('keymaps.utils').map

local tree_focus_or_toggle = function()
    local nvimTree = require('nvim-tree.api')
    local currentBuf = vim.api.nvim_get_current_buf()
    local currentBufFt = vim.api.nvim_get_option_value('filetype', { buf = currentBuf })

    if currentBufFt == 'NvimTree' then
        nvimTree.tree.toggle()
    else
        nvimTree.tree.focus()
    end
end

local function on_attach(bufnr)
    local api = require 'nvim-tree.api'

    -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    map('?', api.tree.toggle_help, 'Help', bufnr, 'n', true)
end

return {
    'nvim-tree/nvim-tree.lua',
    opts = {
        on_attach     = on_attach,
        hijack_cursor = true,
        disable_netrw = true,
        git           = {
            enable = false
        },
        view          = {
            signcolumn = "no",
            float = {
                enable = false
            }
        }
    },
    keys = {
    },
    init = function()
        map('<leader>e', tree_focus_or_toggle, 'Toggle tree')

        -- Disable netrw: https://neovim.io/doc/user/pi_netrw.html#netrw-noload.
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
    end,
    dependencies = {
        'nvim-tree/nvim-web-devicons'
    }
}