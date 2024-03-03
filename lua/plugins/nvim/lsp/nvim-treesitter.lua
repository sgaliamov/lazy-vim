return {
  'nvim-treesitter/nvim-treesitter',
  event = 'VeryLazy',
  enabled = false, -- todo: does not work with telescope
  opts = {
    ensure_installed = {
      'json',
      'lua',
      'markdown_inline',
      'rust',
      'xml',
      'yaml',
    },
    higlights = {
      enable = true
    }
  }
}
