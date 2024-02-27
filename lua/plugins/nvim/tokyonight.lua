return {
  'folke/tokyonight.nvim',
  lazy = false,    -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins https://github.com/folke/lazy.nvim/blob/main/README.md#-colorschemes
  opts = {
    transparent = true
  },
  init = function()
    vim.cmd [[colorscheme tokyonight]]
  end
}
