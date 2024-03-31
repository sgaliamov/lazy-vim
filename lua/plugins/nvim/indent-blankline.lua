--[[ 
Vertical lines on scopes 
]]

local highlight = {
  'RainbowRed',
  'RainbowYellow',
  'RainbowBlue',
  'RainbowOrange',
  'RainbowGreen',
  'RainbowViolet',
  'RainbowCyan',
}

return {
  'lukas-reineke/indent-blankline.nvim',
  main = 'ibl',
  event = 'VeryLazy',
  opts = {
    indent = {
      highlight = highlight,
      char = '│',
    },
  },
  config = function(_, opts)
    local hooks = require 'ibl.hooks'

    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      vim.api.nvim_set_hl(0, 'RainbowRed', { fg = '#DFCDCF' })
      vim.api.nvim_set_hl(0, 'RainbowYellow', { fg = '#E7E3DA' })
      vim.api.nvim_set_hl(0, 'RainbowBlue', { fg = '#CBD7E2' })
      vim.api.nvim_set_hl(0, 'RainbowOrange', { fg = '#D5CBC3' })
      vim.api.nvim_set_hl(0, 'RainbowGreen', { fg = '#CBD2C6' })
      vim.api.nvim_set_hl(0, 'RainbowViolet', { fg = '#DACEDF' })
      vim.api.nvim_set_hl(0, 'RainbowCyan', { fg = '#ADC0C3' })
    end)

    require('ibl').setup(opts)
  end,
}
