return {
  'VonHeikemen/lsp-zero.nvim',
  event = 'VeryLazy',
  opts = {
    on_attach = function(_, bufnr)
      local lsp_zero = require('lsp-zero')
      lsp_zero.default_keymaps({ buffer = bufnr })
    end
  }
}
