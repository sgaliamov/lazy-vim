return {
  'folke/todo-comments.nvim',
  event = 'VeryLazy',
  -- keys = '<leader>tt', -- todo: use it?
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    keywords = {
      todo = { icon = " ", color = "info" },
    }
  },
  init = function()
    local map_keys = require('keymaps.utils').map_keys

    map_keys({
      ['<leader>tt'] = { ':TodoTelescope<cr>', 'Todo comments' }
    })
  end
}
