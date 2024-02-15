local function map(mode, lhs, rhs, opts) -- todo: create shared utils
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

-- Cancel search highlighting with ESC
map("n", "<Esc>", ":noh<Esc>", { desc = "Escape and :noh" }) -- todo: try in vscode
-- keymap("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>", default_opts)

-- Paste over currently selected text without yanking it
-- keymap("v", "p", '"_dP', default_opts)

-- Move to window using the <ctrl> hjkl keys.
map("n", "<C-h>", "<C-w>h", { desc = "Go to left window", remap = true })
map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", remap = true })
map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", remap = true })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window", remap = true })

-- Move text up and down
map("n", "<A-j>", "<Esc>:m .+1<CR>")
map("n", "<A-k>", "<Esc>:m .-2<CR>")

-- todo: move selected text

-- Visual line wraps
local expr_opts = { noremap = true, expr = true, silent = true }
map("n", "k", "v:count == 0 ? 'gk' : 'k'", expr_opts)
map("n", "j", "v:count == 0 ? 'gj' : 'j'", expr_opts)
