local u = require 'utils'
local set = u.set_key

-- todo: create a function.
local mappings = {
    -- todo: try in vscode
    ['<Esc>'] = { ':noh<Esc>', 'Cancel search highlighting with ESC' },
    -- Move to window using the <ctrl> hjkl keys.
    ['<M-h>'] = { '<C-w>h', 'Go to left window' },
    ['<M-j>'] = { '<C-w>j', 'Go to lower window' },
    ['<M-k>'] = { '<C-w>k', 'Go to upper window' },
    ['<M-l>'] = { '<C-w>l', 'Go to right window' }
}

for keys, mapping in pairs(mappings) do
    set('n', keys, mapping[1], mapping[2])
end

-- -- Paste over currently selected text without yanking it
-- -- keymap('v', 'p', ''_dP', default_opts)



-- -- Move text up and down
-- map('n', '<A-j>', '<Esc>:m .+1<CR>')
-- map('n', '<A-k>', '<Esc>:m .-2<CR>')

-- -- todo: move selected text

-- -- Visual line wraps
-- local expr_opts = { noremap = true, expr = true, silent = true }
-- map('n', 'k', 'v:count == 0 ? 'gk' : 'k'', expr_opts)
-- map('n', 'j', 'v:count == 0 ? 'gj' : 'j'', expr_opts)
