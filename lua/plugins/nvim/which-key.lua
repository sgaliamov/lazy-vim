local vinc = { '!', 'n', 'v' }

return {
  'folke/which-key.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {}, -- required
  keys = {
    {
      '<F4>',
      '<cmd>WhichKey<cr>',
      mode = vinc,
      desc = 'Which key',
    },
  },
}
