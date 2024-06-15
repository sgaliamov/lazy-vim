local vn = { 'v', 'n' }
local vsc = require 'vscode-neovim'
--[[
require('keymaps.utils').map_keys {
  -- Refactring: rename.
  {
    '<leader>rr',
    function()
      vsc.call 'editor.action.rename'
    end,
    'Refactring: Rename',
    m = vn,
  },
  {
    'u',
    function()
      vsc.call 'undo'
    end,
    'Replace vim undo',
    m = vn,
  },
  {
    '<leader>w',
    function()
      vsc.call 'editor.action.smartSelect.expand'
    end,
    m = vn,
  },
  {
    '<S-C-w>',
    function()
      vsc.call 'editor.action.smartSelect.shrink'
    end,
    m = vn,
  },
}
 ]]
