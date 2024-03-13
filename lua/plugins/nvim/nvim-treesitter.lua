return {
  'nvim-treesitter/nvim-treesitter',
  event = { 'BufReadPre', "BufNewFile" },
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
        'json',
        'lua',
        'rust',
        'yaml',
        'c',
        'cpp'
      },
      additional_vim_regex_highlighting = false,
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = '<cr>', -- set to `false` to disable one of the mappings
          node_incremental = '<cr>',
          scope_incremental = false, -- todo: do i need it?
          node_decremental = '<bs>',
        },
      },
    }
  end
}
