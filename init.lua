-- BASIC

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- vim options
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = true

-- LOADING
require('packages')
require('keybinds')
require('uigroup')
require('lsp')

-- Lua:
vim.cmd[[colorscheme dracula]]
vim.opt.number = true
vim.opt.relativenumber = true
