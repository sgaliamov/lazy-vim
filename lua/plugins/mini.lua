return {
  'echasnovski/mini.nvim',
  version = '*',
  event = 'VeryLazy',
  config = function()
    if vim.g.vscode then
      -- todo: make a configuration file to define which mini plugings to load.
    else
      require('mini.pairs').setup()
      require('mini.move').setup()

      -- todo: try https://github.com/lukas-reineke/indent-blankline.nvim
      -- require('mini.indentscope').setup({
      --   draw = {
      --     delay = 0,
      --     animation = function() return 10 end,
      --   },
      --   symbol = '·' -- '│'
      -- })
      -- require('mini.surround').setup()

      -- local animate = require('mini.animate')
      -- animate.setup({
      --   cursor = {
      --     timing = animate.gen_timing.quartic({ duration = 100, unit = 'total' }),
      --   },
      --   open = {
      --     enable = false
      --   },
      --   close = {
      --     enable = false
      --   },
      --   resize = {
      --     enable = false
      --   },
      --   scroll = {
      --     enable = false
      --   }
      -- })
    end
  end
}
