--[[
Commenting code.
]]

return {
  'numToStr/Comment.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  opts = {
    toggler = {
      line = 'gc',
      block = 'gb',
    },
    mappings = {
      extra = false,
    },
  },
}
