local vinc = { '!', 'n', 'v' }

return {
  'folke/which-key.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300

    require('keymaps.utils').map_keys({
      ['<F4>'] = { '<cmd>WhichKey<cr>', 'Which key', m = vinc },
    });
  end,
  opts = {} -- required
}
