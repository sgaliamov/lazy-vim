return {
  "nvim-treesitter/playground",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require "nvim-treesitter.configs".setup()
  end
}
