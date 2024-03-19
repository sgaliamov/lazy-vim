local map = require('keymaps.utils').map

-- Use single hotkeys to toggle/focus nvim-tree:
-- If nvim-tree is focused - close it
-- Or always focus nvim-tree otherwise
local tree_focus_or_toggle = function()
  local nvimTree = require 'nvim-tree.api'
  local currentBuf = vim.api.nvim_get_current_buf()
  local currentBufFt = vim.api.nvim_get_option_value('filetype', { buf = currentBuf })

  if currentBufFt == 'NvimTree' then
    nvimTree.tree.toggle()
  else
    nvimTree.tree.focus()
  end
end

local function on_attach(bufnr)
  local api = require 'nvim-tree.api'

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  map('?', api.tree.toggle_help, 'Help', bufnr, 'n', true)

  map('l', function()
    -- todo: fix for non files.
    -- todo: don't open duplicates.
    -- todo: when a buffer is closed, close the tree as well.
    local node = api.tree.get_node_under_cursor()
    vim.cmd 'wincmd l'
    api.node.open.tab(node)
    api.tree.toggle { focus = false }
  end, 'Open with tree', bufnr, 'n', true)
end

return {
  'nvim-tree/nvim-tree.lua',
  event = 'VeryLazy',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  init = function()
    map('<leader>e', tree_focus_or_toggle, 'Toggle tree', nil, nil, true)

    -- Disable netrw: https://neovim.io/doc/user/pi_netrw.html#netrw-noload.
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
  end,
  opts = {
    on_attach = on_attach,
    hijack_cursor = true,
    disable_netrw = true,
    update_focused_file = {
      enable = true,
    },
    git = {
      enable = false, -- very slow
    },
    filters = {
      dotfiles = true,
    },
    renderer = {
      root_folder_label = false, -- Hides the root folder.
      group_empty = true, -- Compact folders that only contain a single folder into one node.
    },
    live_filter = {
      prefix = '?',
      always_show_folders = false, -- Turn into false from true by default.
    },
    view = {
      number = true,
      relativenumber = true,
      signcolumn = 'auto',
      width = {
        max = -1, -- set the width automatically to the longest file name.
      },
    },
  },
}
