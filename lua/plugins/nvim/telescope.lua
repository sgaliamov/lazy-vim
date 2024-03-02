return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'BurntSushi/ripgrep',
        'smartpde/telescope-recent-files'
    },
    init = function()
        local builtin = require 'telescope.builtin'
        local map_keys = require('keymaps.utils').map_keys

        local mappings = {
            ['<leader>tg'] = { builtin.git_files, 'telescope: Git files' },
            ['<leader>tf'] = { builtin.find_files, 'telescope: Find files' },
            ['<leader>tr'] = { '<cmd>lua require("telescope").extensions.recent_files.pick()<cr>', 'telescope: Recent files' }
        }

        map_keys(mappings)
    end
}
