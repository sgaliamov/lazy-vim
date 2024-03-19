--[[
Used by `nvim-dap-ui`
]]

return {
  'folke/neodev.nvim',
  event = 'VeryLazy',
  opts = {
    library = {
      plugins = { 'nvim-dap-ui' },
      types = true,
    },
  },
}
