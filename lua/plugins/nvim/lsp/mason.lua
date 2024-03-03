return {
  'williamboman/mason.nvim',
  opts = {},        -- needs opts or config = true.
  init = function() -- can't be config
    local map_keys = require('keymaps.utils').map_keys
    map_keys({
      ['<leader>M'] = { ':Mason<cr>', 'Mason UI' },
    })
  end
}
