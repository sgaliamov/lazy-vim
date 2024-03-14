vim.wo.number = true
vim.wo.relativenumber = true

local opt = vim.opt

-- Edit:
opt.softtabstop = 2
opt.shiftwidth = 2
-- vim.opt.tabstop = 2
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true

-- UI:
opt.cursorline = true    -- highlight the current cursor line.
opt.signcolumn = 'yes:1' -- to give space for warning signs.
-- vim.opt.termguicolors = true -- Nvim will automatically attempt to determine if the host terminal supports 24-bit color and will enable this option if it does
opt.list = true          -- Displays invisible characters.

-- Search settings:
opt.ignorecase = true -- ignore case when searching.
opt.smartcase = true  -- if you include mixed case in your search, assumes you want case-sensitive.

-- Other:
opt.swapfile = false -- turn off swapfile

-- opt.autochdir = true -- set the working directory automatically to the parent folde of the buffer file


-- vim.opt.wrap = false
-- vim.opt.swapfile = false
-- vim.opt.backup = false
-- vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
-- vim.opt.undofile = true
-- vim.opt.incsearch = true
-- vim.opt.scrolloff = 8
-- vim.opt.isfname:append("@-@")
-- vim.opt.updatetime = 50
-- vim.opt.colorcolumn = "80"
