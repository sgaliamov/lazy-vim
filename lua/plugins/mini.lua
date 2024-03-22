return {
  'echasnovski/mini.nvim',
  version = '*',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    if vim.g.vscode then
      -- todo: make a configuration file to define which mini plugings to load.
    else
      require('mini.pairs').setup()
      require('mini.move').setup()
    end
  end,
}
