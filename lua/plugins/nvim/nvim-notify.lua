return {
  'rcarriga/nvim-notify',
  config = function()
    require('keymaps.utils').map_keys({
      ['<leader>tn'] = { ':Telescope notify<cr>', 'Notification history' }
    })
  end
}
