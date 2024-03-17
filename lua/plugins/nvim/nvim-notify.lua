return {
  'rcarriga/nvim-notify',
  init = function()
    require('keymaps.utils').map_keys({
      ['<leader>tn'] = { ':Telescope notify<cr>', 'Notification history' }
    })
  end,
  opts = {
    render = 'compact',
    stages = 'static'
  },
}
