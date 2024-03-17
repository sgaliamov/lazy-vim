--[[
AST for code.
]]

return {
  'nvim-treesitter/nvim-treesitter',
  -- event = { 'BufReadPre', 'BufNewFile' }, -- todo: probably this randomly breaks the pluggin.
  event = 'VeryLazy',
  build = ':TSUpdate',
  config = function()
    require 'nvim-treesitter.configs'.setup {
      highlight = {
        enable = true,
      },
      indent = { enable = true },
      sync_install = false,
      auto_install = true,
      ensure_installed = {
        'c',
        'cpp',
        'json',
        'lua',
        'markdown_inline',
        'query',
        'rust',
        'toml',
        'yaml',
      },
      additional_vim_regex_highlighting = false,
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = '<cr>',   -- set to `false` to disable one of the mappings
          node_incremental = '<cr>',
          scope_incremental = false, -- todo: do i need it?
          node_decremental = '<bs>'
        },
      },
    }

    -- Treesitter folding
    -- vim.wo.foldmethod = 'expr'
    -- vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
  end
}
