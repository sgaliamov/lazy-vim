return {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'BurntSushi/ripgrep' },
    init = function()
        local builtin = require 'telescope.builtin'
        local set = require('utils').set_key

        set('n', '<leader><leader>', builtin.find_files, 'Find files')
    end
}
