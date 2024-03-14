--[[
Fancy status line.
]]

return {
  'nvim-lualine/lualine.nvim',
  event = 'VeryLazy',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      theme = 'gruvbox-material',
      disabled_filetypes = { "NvimTree" }
    },
  }
}
