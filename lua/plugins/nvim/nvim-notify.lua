return {
    'rcarriga/nvim-notify',
    opts = {},
    init = function()
        local map_keys = require('keymaps.utils').map_keys
        map_keys({
            ['<leader>tn'] = { ':Telescope notify<cr>', 'Notification history' }
        })
    end
}
