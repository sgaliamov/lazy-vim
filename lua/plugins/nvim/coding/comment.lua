--[[
Commenting code.
]]

return {
  'numToStr/Comment.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  opts = {
    toggler = {
      line = 'gc', -- default: gc
      block = 'gb',
    },
    mappings = {
      extra = false,
    },
  },
}
