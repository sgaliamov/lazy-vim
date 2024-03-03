return {
  'rcarriga/nvim-notify',
  config = function()
    local map_keys = require('keymaps.utils').map_keys
    map_keys({
      ['<leader>tn'] = { ':Telescope notify<cr>', 'Notification history' }
    })
  end
}
