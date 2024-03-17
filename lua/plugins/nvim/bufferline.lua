--[[
Nice tabs.
]]

return {
  "akinsho/bufferline.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    options = {
      mode = "tabs",
    },
  },
}
