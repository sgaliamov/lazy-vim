local vin = { 'v', 'i', 'n' }
-- local vn = { 'v', 'n' }

local function toogle_language()
  local current = vim.api.nvim_get_option 'spelllang'
  local default = ''
  local ru = 'russian-jcukenwin'

  if current == default then
    vim.api.nvim_command('set keymap=' .. ru)
  else
    vim.api.nvim_command('set keymap=' .. default)
  end
end

-- To be albe to use a shortcut in the insert mode use A.
require('keymaps.utils').map_keys {
  -- Save and quit.
  { '<C-q>', '<cmd>q<cr>', 'Close window', m = vin },
  { '<A-q>', '<cmd>qa<cr>', 'Close all windows', m = vin },
  { '<C-s>', '<cmd>w<cr>', 'Save file', m = vin },
  { '<A-s>', '<cmd>wa<cr>', 'Save all', m = vin },

  -- General.
  { 'jj', '<Esc>', 'Fast excape', m = 'i', remap = true },
  -- { '<A-l>', toogle_language, 'Keyboard layouts...', m = vin },

  -- Better pagination.
  { '<C-d>', '<C-d>zz', 'Scroll half page down & center' },
  { '<C-u>', '<C-u>zz', 'Scroll half page up & center' },
  { '<C-f>', '<C-f>zz', 'Scroll page down & center' },
  { '<C-b>', '<C-b>zz', 'Scroll page up & center' },

  -- Move to window using the <Alt>+hjkl/arrow keys.
  { '<C-h>', '<C-w>h', 'Go to left window' },
  { '<C-j>', '<C-w>j', 'Go to lower window' },
  { '<C-k>', '<C-w>k', 'Go to upper window' },
  { '<C-l>', '<C-w>l', 'Go to right window', force = true }, -- default: redraws and clears the screen
  { '<C-Left>', '<C-w>h', 'Go to left window' },
  { '<C-Down>', '<C-w>j', 'Go to lower window' },
  { '<C-Up>', '<C-w>k', 'Go to upper window' },
  { '<C-Right>', '<C-w>l', 'Go to right window' },
}
