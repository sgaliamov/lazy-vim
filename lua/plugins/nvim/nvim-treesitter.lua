return {
  'nvim-treesitter/nvim-treesitter',
  event = 'VeryLazy',
  enabled = false, -- todo: fix it
  opts = {
    ensure_installed = {
      -- 'json',
      'lua',
      -- 'markdown_inline',
      -- 'rust',
      -- 'xml',
      -- 'yaml',
    },
    higlights = {
      enable = true
    }
  }
}
