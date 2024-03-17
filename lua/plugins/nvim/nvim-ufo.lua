return {
  'kevinhwang91/nvim-ufo',
  event = 'VeryLazy',
  dependencies = {
    'kevinhwang91/promise-async',
    'nvim-treesitter/nvim-treesitter',
  },
  init = function()
    vim.o.foldcolumn = '1' -- '0' is not bad
    vim.o.foldlevel = 99   -- Using ufo provider need a large value, feel free to decrease the value
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true
    vim.o.fillchars = [[foldopen:▼,foldclose:⏵]]
    --   -- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
    --   -- vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
    --   -- vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
  end,
  opts = {
    provider_selector = function()
      return { "treesitter", "indent" }
    end,
  },
}
