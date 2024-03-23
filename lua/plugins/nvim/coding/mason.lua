return {
  'williamboman/mason.nvim',
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
    {
      '<leader>M',
      ':Mason<cr>',
      mode = { 'n', 'v' },
      desc = 'Mason UI',
    },
  },
}
