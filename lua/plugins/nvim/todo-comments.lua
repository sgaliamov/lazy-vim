return {
  'folke/todo-comments.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = { 'nvim-lua/plenary.nvim' },
  init = function()
    require('keymaps.utils').map_keys {
      ['<leader>td'] = { ':TodoTelescope<cr>', 'Todo comments' },
    }
  end,
  opts = {
    keywords = {
      todo = { icon = ' ', color = 'info' },
    },
  },
}
