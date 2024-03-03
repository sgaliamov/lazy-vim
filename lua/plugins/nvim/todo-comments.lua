return {
  'folke/todo-comments.nvim',
  event = 'VeryLazy',
  -- keys = '<leader>tt', -- todo: use it?
  dependencies = { "nvim-lua/plenary.nvim" },
  init = function()
    require('keymaps.utils').map_keys({
      ['<leader>td'] = { ':TodoTelescope<cr>', 'Todo comments' }
    })
  end,
  opts = {
    keywords = {
      todo = { icon = " ", color = "info" },
    }
  }
}
