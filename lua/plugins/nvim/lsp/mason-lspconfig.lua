return {
  'williamboman/mason-lspconfig.nvim',
  dependencies = {
    'williamboman/mason.nvim',
  },
  opts = {
    ensure_installed = {
      'lua_ls',
      'bicep',
      'csharp_ls',
      'jsonls',
      'rust_analyzer',
      'yamlls'
    }
  }
}
