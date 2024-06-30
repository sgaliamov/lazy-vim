-- local vsc = require 'vscode-neovim'

-- local map = vim.keymap.set
-- local defaults = { noremap = true, silent = true }


-- it is not possible to just define bindings for the insert mode.
-- need either to disable configs for vscode-neovim C:\Users\u01sga\AppData\Roaming\Code\User\keybindings.json or use "vscode-neovim.compositeKeys" settings.

-- does not work
-- vim.api.nvim_set_keymap('i', 'jj', '<Esc>`^', { noremap = true, silent = true })

--[[
require('keymaps.utils').map_keys :{
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
