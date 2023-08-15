-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

require("boydvoid.remap")
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("boydvoid.plugins")
require("boydvoid.plugins.oil")
require("boydvoid.plugins.lualine")
require("boydvoid.plugins.autopairs")
require("boydvoid.plugins.lspzero")
require("boydvoid.plugins.formatter")
require("boydvoid.plugins.tree")
require("boydvoid.config")
