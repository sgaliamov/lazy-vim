return {
  'rcarriga/nvim-notify',
  event = 'VeryLazy',
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
