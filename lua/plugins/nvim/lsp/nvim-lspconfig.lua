return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
    'hrsh7th/cmp-nvim-lsp',
  },
  config = function()
    local lspconfig = require('lspconfig')
    local lsp_defaults = lspconfig.util.default_config

    lsp_defaults.capabilities = vim.tbl_deep_extend(
      'force',
      lsp_defaults.capabilities,
      require('cmp_nvim_lsp').default_capabilities()
    )

    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
          workspace = {
            library = {
              [vim.fn.expand "$VIMRUNTIME/lua"] = true,
            },
          },
        },
      }
    });

    lspconfig.jsonls.setup({});

    -- lspconfig.rust_analyzer.setup {
    --   settings = {
    --     ['rust-analyzer'] = {},
    --   },
    -- }

    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup('UserLspConfig', {}),
      callback = function(ev)
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc' -- Enable completion triggered by <c-x><c-o>

        local opts = function(desc)
          return { buffer = ev.buf, desc = desc }
        end

        -- See `:help vim.lsp.*` for documentation on any of the below functions
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts('Go to declaration'))
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts('Go to definition'))
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts('Go to implementation'))
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts('List references'))
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts('Hover'))
        vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts('Type definition'))
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts('Rename'))
        vim.keymap.set({ 'n', 'i', 'v' }, '<A-CR>', vim.lsp.buf.code_action, opts('Code action'))
        -- vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
        -- vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
        -- vim.keymap.set('n', '<space>wl', function()
        --   print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        -- end, opts)
      end,
    })
  end
}
