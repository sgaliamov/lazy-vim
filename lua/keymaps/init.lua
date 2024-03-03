local map_keys = require('keymaps.utils').map_keys

local mappings = {
}

map_keys(mappings)

if vim.g.vscode then
  require('keymaps.vscode')
else
  require('keymaps.nvim')
end
