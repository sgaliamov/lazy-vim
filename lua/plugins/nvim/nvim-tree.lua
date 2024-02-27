-- Disable netrw: https://neovim.io/doc/user/pi_netrw.html#netrw-noload.
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local function on_attach(bufnr)
    local api = require 'nvim-tree.api'
    local u = require 'utils'
    local set = u.set_key

    local function edit_or_open()
        local node = api.tree.get_node_under_cursor()

        if node.nodes ~= nil then
            -- expand or collapse folder
            api.node.open.edit()
        else
            -- open file
            api.node.open.edit()
            -- Close the tree if file was opened
            api.tree.close()
        end
    end

    -- open as vsplit on current node
    local function vsplit_preview()
        local node = api.tree.get_node_under_cursor()

        if node.nodes ~= nil then
            -- expand or collapse folder
            api.node.open.edit()
        else
            -- open file as vsplit
            api.node.open.vertical()
        end

        -- Finally refocus on tree if it was lost
        api.tree.focus()
    end

    -- api.tree.open()

    -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    set('n', ':NvimTreeToggle<cr>', 'Tree toggle')
    set('n', '?', api.tree.toggle_help, 'Help', bufnr)
    -- vim.keymap.set('n', 'l', edit_or_open, opts('Edit Or Open'))
    -- vim.keymap.set('n', 'L', vsplit_preview, opts('Vsplit Preview'))
end

return {
    'nvim-tree/nvim-tree.lua',
    opts = {
        on_attach     = on_attach,
        hijack_cursor = true,
        disable_netrw = true,
    },
    dependencies = {
        'nvim-tree/nvim-web-devicons'
    }
}
