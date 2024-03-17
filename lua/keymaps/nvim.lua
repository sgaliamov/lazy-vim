local vin = { 'i', 'n', 'v' }

require('keymaps.utils').map_keys({
  ['<C-q>'] = { '<cmd>q<cr>', 'Close window', m = vin },
  ['<A-q>'] = { '<cmd>qa<cr>', 'Close all windows', m = vin },
  ['<C-s>'] = { '<cmd>w<cr>', 'Save file', m = vin },
  ['<A-s>'] = { '<cmd>wa<cr>', 'Save all', m = vin },
  ['<A-S-s>'] = { '<cmd>wa!<cr>', 'Save all (force)', m = vin },
  ['jj'] = { '<Esc>', 'Fast excape', m = 'i', opts = { remap = true } },

  -- Toggle languages.
  -- ['<leader>l'] = { ':noh<cr>', 'Keyboard layouts...' },                   -- todo: find better way to set a group name.
  ['<leader>lr'] = { ':set keymap=russian-jcukenwin<cr>', 'Russian layout' }, -- todo: implement toggle
  ['<leader>ld'] = { ':set keymap=""<cr>', 'Default layout' },                -- todo: in vscode the layout is not working in insert mode.

  -- Better yanking.
  ['<leader>y'] = { '"+y', 'Yank in clipboard' },
  ['<leader>Y'] = { '"+Y', 'Yank line in clipboard' },
  ['<leader>p'] = { '"_dP', 'Replace without yanking', m = 'v' }, -- use <Shift-Insert> to paste from clipboard.
  ['<leader>yy'] = { '"+yiw', 'Yank inner word in clipboard' },

  -- Better navigation.
  ['<C-d>'] = { '<C-d>zz', 'Scroll down & center' },
  ['<C-u>'] = { '<C-u>zz', 'Scroll up & center' },

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
