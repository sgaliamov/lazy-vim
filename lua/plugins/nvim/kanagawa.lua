--[[
Color scheme.
]]

return {
  'rebelot/kanagawa.nvim',
  lazy = false,    -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins https://github.com/folke/lazy.nvim/blob/main/README.md#-colorschemes
  init = function()
    vim.cmd 'colorscheme kanagawa'
  end,
  opts = {
    transparent = true,
    theme = "wave", -- Load "wave" theme when 'background' option is not set
    background = {  -- map the value of 'background' option to a theme
      dark = "dragon",
      light = "lotus"
    },
    colors = {
      theme = {
        all = {
          ui = {
            bg_gutter = 'none'
          }
        }
      },
    },
    overrides = function()
      return {
        NormalFloat = { bg = "none" },
        FloatBorder = { bg = "none" },
        FloatTitle = { bg = "none" },
        TelescopeBorder = { bg = 'none' },
      }
    end,
  }
}
