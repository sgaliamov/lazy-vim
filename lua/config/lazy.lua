-- Install lazy vim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
    spec = {
        { import = "plugins" },
    }
    --   spec = {
    --   },
    --   defaults = {
    --     lazy = false,
    --     version = false,            -- always use the latest git commit
    --   },
    --   checker = { enabled = true }, -- automatically check for plugin updates
    --   install = { colorscheme = { "tokyonight", "habamax" } },
    --   performance = {
    --     rtp = {
    --       disabled_plugins = {
    --         "gzip",
    --         "tarPlugin",
    --         "tohtml",
    --         "tutor",
    --         "zipPlugin",
    --       },
    --     },
    --   },
})

if vim.g.vscode then

else

end
