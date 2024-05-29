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
  {
    'u',
    function()
      vscode.call 'undo'
    end,
    'Replace vim undo',
    m = vn,
  },
  {
    '<Enter>',
    function()
      vscode.call 'editor.action.smartSelect.expand'
    end,
    m = vn,
  },
}
