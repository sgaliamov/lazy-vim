return {
  'williamboman/mason.nvim',
  -- init = function() -- can't be config
  --   require('keymaps.utils').map_keys {
  --     ['<leader>M'] = { ':Mason<cr>', 'Mason UI' },
  --   }
  -- end,
  opts = {
    ui = {
      icons = { -- fix for ugly default icons.
        package_installed = '',
        package_pending = '',
        package_uninstalled = '',
      },
    },
  },
  keys = {
    '<leader>M',
    ':Mason<cr>',
    mode = { 'n', 'v' },
    desc = 'Mason UI',
  },
}
