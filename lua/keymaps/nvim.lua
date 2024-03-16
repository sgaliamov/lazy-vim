-- local vinc = { '!', 'n', 'v' }
local vin = { 'i', 'n', 'v' }

require('keymaps.utils').map_keys({
  ['<leader>L'] = { ':Lazy<cr>', 'Lazy UI' },      -- todo: should be in the plug config.
  ['<C-q>'] = { '<cmd>qa<cr>', 'Quit', m = vin }, -- todo: find a way to use Ctrl
  ['<C-s>'] = { '<cmd>wa<cr>', 'Save all', m = vin },
  -- ['<C-s><C-q>'] = { '<cmd>wqa<cr>', 'Save all & Quit', m = vinc },
  ['jj'] = { '<Esc>', 'Fast excape', m = 'i', opts = { remap = true } },

  -- Toggle languages.
  -- ['<leader>l'] = { ':noh<cr>', 'Keyboard layouts...' },                   -- todo: find better way to set a group name.
  ['<leader>lr'] = { ':set keymap=russian-jcukenwin<cr>', 'Russian layout' }, -- todo: implement toggle
  ['<leader>ld'] = { ':set keymap=""<cr>', 'Default layout' },                -- todo: in vscode the layout is not working in insert mode.

  -- Better yanking.
  ['<leader>y'] = { '"+y', 'Yank in clipboard' },
  ['<leader>Y'] = { '"+Y', 'Yank line in clipboard' }, -- todo: paste from clipboard.
  ['<leader>p'] = { '"_dP', 'Replace without yanking', m = 'v' },
  ['<leader>yy'] = { '"+yiw', 'Yank inner word in clipboard' },

  -- Better navigation.
  ['<C-d>'] = { '<C-d>zz', 'Scroll down & center' },
  ['<C-u>'] = { '<C-u>zz', 'Scroll up & center' },

  -- Better text editing.
  ['<A-k>'] = { ':m -2<cr>gv=gv', 'Move text up' },
  ['<A-j>'] = { ':m +1<cr>gv=gv', 'Move text down' },

  -- Move to window using the <Alt>+hjkl/arrow keys.
  ['<C-h>'] = { '<C-w>h', 'Go to left window' }, -- todo: create window if no window on the direction
  ['<C-j>'] = { '<C-w>j', 'Go to lower window' },
  ['<C-k>'] = { '<C-w>k', 'Go to upper window' },
  ['<C-l>'] = { '<C-w>l', 'Go to right window', force = true }, -- default: redraws and clears the screen
  ['<C-Left>'] = { '<C-w>h', 'Go to left window' },
  ['<C-Down>'] = { '<C-w>j', 'Go to lower window' },
  ['<C-Up>'] = { '<C-w>k', 'Go to upper window' },
  ['<C-Right>'] = { '<C-w>l', 'Go to right window' },
})
