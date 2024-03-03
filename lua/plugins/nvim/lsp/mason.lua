return {
  'williamboman/mason.nvim',
  init = function()
    local map_keys = require('keymaps.utils').map_keys
    map_keys({
      ['<leader>M'] = { ':Mason<cr>', 'Mason UI' },
    })
  end
}
