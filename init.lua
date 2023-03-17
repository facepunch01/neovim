-- BASIC
-- read further you will get it
-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.carbon_lazy_init = true

-- vim options
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = true
vim.cmd("cd ~")
vim.opt.clipboard = "unnamedplus"
vim.opt.numberwidth = 1

-- LOADING
require('packages')
require('keybinds')
require('uigroup')

-- Lua:
vim.cmd[[colorscheme dracula]]
vim.opt.number = true
vim.opt.relativenumber = true
