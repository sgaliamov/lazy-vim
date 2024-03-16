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
    overrides = function(colors)
      local theme = colors.theme

      return {
        NormalFloat = { bg = "none" },
        FloatBorder = { bg = "none" },
        FloatTitle = { bg = "none" },

        -- -- Save an hlgroup with dark background and dimmed foreground
        -- -- so that you can use it where your still want darker windows.
        -- -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
        -- NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
        --
        -- -- Popular plugins that open floats will link to NormalFloat by default;
        -- -- set their background accordingly if you wish to keep them dark and borderless
        -- LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
        -- MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },

        -- todo: fix borders for Telescope.
        -- TelescopeTitle = { fg = theme.ui.special, bold = true },
        -- TelescopePromptNormal = { bg = theme.ui.bg_p1 },
        -- TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
        -- TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
        -- TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
        -- TelescopePreviewNormal = { bg = theme.ui.bg_dim },
        -- TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
      }
    end,
  }
}
