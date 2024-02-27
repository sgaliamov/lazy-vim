local set_keys = require('utils').set_keys

local mappings = {
    ['<Esc>'] = { ':noh<Esc>', 'Cancel search highlighting with ESC' },
}

set_keys('n', mappings)

if vim.g.vscode then
    require('config.keymaps.vscode')
else
    require('config.keymaps.nvim')
end
