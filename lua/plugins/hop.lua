return {
  'phaazon/hop.nvim',
  config = function()
    require('hop').setup()

    require('keymaps.utils').map_keys({
      ['f'] = { ':HopChar1<cr>', 'Hop one charracter' }
    })
  end
}
