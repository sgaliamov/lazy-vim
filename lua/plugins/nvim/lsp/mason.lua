return {
  'williamboman/mason.nvim',
  init = function() -- can't be config
    require('keymaps.utils').map_keys({
      ['<leader>M'] = { ':Mason<cr>', 'Mason UI' },
    })
  end,
  opts = {}, -- required opts or config = true.
}
