return {
  'folke/tokyonight.nvim',
  lazy = false,     -- make sure we load this during startup if it is your main colorscheme
  priority = 1000,  -- make sure to load this before all the other start plugins https://github.com/folke/lazy.nvim/blob/main/README.md#-colorschemes
  init = function() -- loads before opts.
    vim.cmd 'colorscheme tokyonight'
  end,
  opts = {
    transparent = true
  }
}
