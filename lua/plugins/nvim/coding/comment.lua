--[[
Commenting code.
]]

return {
  'numToStr/Comment.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  opts = {
    toggler = {
      line = '<leader>/',
      block = '<leader>//',
    },
    mappings = {
      extra = false,
    },
  },
}
