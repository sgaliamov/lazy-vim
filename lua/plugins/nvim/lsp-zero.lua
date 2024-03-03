return {
  'VonHeikemen/lsp-zero.nvim',
  opts = {
    on_attach = function(client, bufnr)
      print(1)
      local lsp_zero = require('lsp-zero')
      lsp_zero.default_keymaps({buffer = bufnr})
    end
  }
}
