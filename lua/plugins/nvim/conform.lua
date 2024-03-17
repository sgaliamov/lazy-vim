return {
  'stevearc/conform.nvim',
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
  },
  lazy = true,
  cmd = 'ConformInfo',
  keys = {
    {
      '<A-f>',
      function()
        require('conform').format()
      end,
      mode = { 'n', 'v', 'i' },
      desc = 'Format code',
    },
  },
  opts = {
    formatters_by_ft = {
      lua = { 'stylua' },
      ['_'] = { 'trim_whitespace' },
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    },
  },
}
