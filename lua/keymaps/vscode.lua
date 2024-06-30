local vsc = require 'vscode-neovim'
local opts = require('keymaps.utils').key_opts;
local map = vim.keymap.set

map(
  {'i', 'v'},
  'rr',
  function() vsc.call 'editor.action.rename' end,
 opts('Refactring: Rename'))

map({'n', 'v'}, '<leader>w', function() vsc.call 'editor.action.smartSelect.expand' end, opts('Expand selection'))

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
    '<leader>w',
    function() vsc.call 'editor.action.smartSelect.expand' end,
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
