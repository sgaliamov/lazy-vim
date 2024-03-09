return {
  {
    "nvim-treesitter/nvim-treesitter",
    -- event = { "BufReadPre", "BufNewFile" },
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
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<M-w>",
          node_incremental = "<M-w>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
      additional_vim_regex_highlighting = false,
    },
  }
}
