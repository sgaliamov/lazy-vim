-- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Install lazy vim.
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

-- Global plugins.
local spec = {
  { import = "plugins" }
}

-- Conditional plugings.
if vim.g.vscode then
  table.insert(spec, { import = "plugins/vscode" })
else
  table.insert(spec, { import = "plugins/nvim" })
end

-- Load plugings.
require("lazy").setup({
  spec = spec,
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
