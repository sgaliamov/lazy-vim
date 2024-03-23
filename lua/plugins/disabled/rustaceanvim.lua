return {
  'mrcjkb/rustaceanvim',
  version = '^4', -- Recommended
  ft = { 'rust' },
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
  },
  -- config = false,
  -- opts = {
  --   server = {
  --     on_attach = function(_, bufnr)
  --       vim.keymap.set('n', '<leader>a', function()
  --         vim.cmd.RustLsp 'codeAction' -- supports rust-analyzer's grouping
  --         -- or vim.lsp.buf.codeAction() if you don't want grouping.
  --       end, { silent = true, buffer = bufnr })
  --     end,
  --   },
  -- },
}
