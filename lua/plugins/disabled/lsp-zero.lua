return {
  'VonHeikemen/lsp-zero.nvim',
  event = 'VeryLazy',
  opts = {
    on_attach = function(_, bufnr)
      local lsp_zero = require('lsp-zero')
      lsp_zero.default_keymaps({ buffer = bufnr })
    end
  },
  dependencies = {
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' }
  }
}
