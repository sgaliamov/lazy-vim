local map_keys = require('keymaps.utils').map_keys

local mappings = {
    ['<Esc>'] = { ':noh<Esc>', 'Cancel search highlighting with ESC' },

    -- Toggle languages.
    ['<leader>lr'] = { ':set keymap=russian-jcukenwin<cr>', 'Russian layout' }, -- todo: implement toggle
    ['<leader>ld'] = { ':set keymap=""<cr>', 'Default layout' },                -- todo: in vscode the layout is not working in insert mode.

    -- Move to window using the <ctrl> hjkl keys.
    --['<M-h>'] = { '<C-w>h', 'Go to left window' },                              -- todo: create window if no window on the direction
    --['<M-j>'] = { '<C-w>j', 'Go to lower window' },
    --['<M-k>'] = { '<C-w>k', 'Go to upper window' },
    --['<M-l>'] = { '<C-w>l', 'Go to right window' },

    ['<C-Q>'] = { ':qa<cr>', 'Quit' },
    ['<F1>'] = { '<cmd>WhichKey<cr>', 'Which key' },

    -- Better yanking.
    ['<leader>p'] = { '"_dP', 'Paste without yanking' }, -- todo: test
    ['<leader>d'] = { '"_d', 'Delete without yanking' },
    ['<leader>y'] = { '"+y', 'Yank in clipboard' },
    ['<leader>Y'] = { '"+Y', 'Yank line in clipboard' },
}

vim.api.nvim_set_keymap('', '<C-S>', '<cmd>wa<cr>', { desc = 'Save all', noremap = true, silent = true })
-- vim.api.nvim_set_keymap('i', '<C-S>', function() vim.cmd('wa') end, { desc = 'Save all', noremap = true, silent = true })

map_keys(mappings)
-- -- Paste over currently selected text without yanking it
-- -- keymap('v', 'p', ''_dP', default_opts)

-- -- move selected text.
-- vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- better page up and down.
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- greatest remap ever


-- -- Move text up and down
-- map('n', '<A-j>', '<Esc>:m .+1<CR>')
-- map('n', '<A-k>', '<Esc>:m .-2<CR>')

-- -- todo: move selected text

-- -- Visual line wraps
-- local expr_opts = { noremap = true, expr = true, silent = true }
-- map('n', 'k', 'v:count == 0 ? 'gk' : 'k'', expr_opts)
-- map('n', 'j', 'v:count == 0 ? 'gj' : 'j'', expr_opts)
