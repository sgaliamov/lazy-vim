return {
  {
    "nvim-treesitter/nvim-treesitter",
    -- event = { "BufReadPre", "BufNewFile" },
    event = 'VeryLazy',
    build = ":TSUpdate",
    opts = {
      highlight = {
        enable = true,
      },
      indent = { enable = true },
      ensure_installed = {
        'json',
        'lua',
        'markdown_inline',
        'rust',
        'xml',
        'yaml',
        'c',
        'cpp'
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<cr>",
          node_incremental = "<cr>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
      additional_vim_regex_highlighting = false,
    },
  }
}
