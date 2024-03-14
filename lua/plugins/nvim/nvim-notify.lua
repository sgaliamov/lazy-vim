return {
  'rcarriga/nvim-notify',
  opts = {
    render = 'compact',
    stages = 'static'
  },
  init = function()
    require('keymaps.utils').map_keys({
      ['<leader>tn'] = { ':Telescope notify<cr>', 'Notification history' }
    })
  end
}
