return {
    'nvim-treesitter/nvim-treesitter',
    enabled = false,
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
            enable = true -- todo: fix it
        }
    }
}
