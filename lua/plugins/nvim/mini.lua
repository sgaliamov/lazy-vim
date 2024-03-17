return {
  'echasnovski/mini.nvim',
  version = '*',
  event = 'VeryLazy',
  config = function()
    require('mini.pairs').setup()
    require('mini.move').setup()
  end
}
