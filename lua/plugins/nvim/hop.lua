local vinc = { '!', 'n', 'v' }

return {
  'phaazon/hop.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  opts = {},
  keys = {
    { 'W', ':HopWordAC<cr>', mode = vinc, desc = 'Hop to word after the cursor' },
    { 'B', ':HopWordBC<cr>', mode = vinc, desc = 'Hop to word before the cursor' },
  },
}
