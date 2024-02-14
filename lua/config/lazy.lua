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
  },
  defaults = {
    lazy = false,
    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    version = false
  },
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "matchit",     -- matches not only braces
        -- "matchparen", -- keep to higlight paired braces
        "netrwPlugin", -- can be replces with nvim-tree
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
    checker = { enabled = true }, -- automatically check for plugin updates
  }
})


-- for k,v in pairs(second_table) do first_table[k] = v end
-- vim.keymap.set('n', '<Leader>ex1', '<Cmd>echomsg "Example 1"<CR>')
