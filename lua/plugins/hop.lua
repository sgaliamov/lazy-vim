return {
  'phaazon/hop.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  init = function()
    require('keymaps.utils').map_keys({
      ['W'] = { ':HopWordAC<cr>', 'Hop to word after the cursor' },
      ['B'] = { ':HopWordBC<cr>', 'Hop to word before the cursor' },
    })
  end,
  opts = {}
}
