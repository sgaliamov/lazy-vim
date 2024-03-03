return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'BurntSushi/ripgrep',
    'smartpde/telescope-recent-files',
    'nvim-telescope/telescope-ui-select.nvim'
  },
  config = function()
    local builtin = require 'telescope.builtin'

    require('keymaps.utils').map_keys({
      ['<leader>tg'] = { builtin.git_files, 'Git files' },
      ['<leader>tf'] = { builtin.find_files, 'Find files' },
      ['<leader>tr'] = { '<cmd>lua require("telescope").extensions.recent_files.pick()<cr>', 'Recent files' }
    })

    require("telescope").setup {
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown {}
        }
      }
    }
    require("telescope").load_extension("ui-select")
  end
}
