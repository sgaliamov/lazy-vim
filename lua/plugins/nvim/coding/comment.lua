--[[
Commenting code.
]]

return {
  'numToStr/Comment.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  opts = {
    toggler = {
      line = 'gc', -- default: gcc
      block = 'gb', -- default: gcb
    },
    mappings = {
      extra = false,
    },
  },
}
