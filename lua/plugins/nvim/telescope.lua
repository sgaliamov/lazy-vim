return {
  'nvim-telescope/telescope.nvim',
  event = 'VeryLazy',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'BurntSushi/ripgrep',
    'smartpde/telescope-recent-files',
    'nvim-telescope/telescope-ui-select.nvim',
    -- 'nvim-telescope/telescope-fzf-native.nvim' -- todo: try it
    -- 'nvim-telescope/telescope-file-browser.nvim' -- todo: try it instead of nvim-tree
  },
  init = function()
    local builtin = require 'telescope.builtin'

    require('keymaps.utils').map_keys({
      ['<leader>fg'] = { builtin.git_files, 'Git files' },
      ['<leader>ff'] = { builtin.find_files, 'Find files' },
      ['<leader>fr'] = { '<cmd>lua require("telescope").extensions.recent_files.pick()<cr>', 'Recent files' }
    })
  end,
  config = function()
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
