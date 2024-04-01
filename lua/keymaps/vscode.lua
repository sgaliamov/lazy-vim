local vn = { 'v', 'n' }
local vscode = require 'vscode-neovim'

require('keymaps.utils').map_keys {
  -- Refactring: rename.
  {
    '<leader>rr',
    function()
      vscode.call 'editor.action.rename'
    end,
    'Refactring: Rename',
    m = vn,
  },
}
