-- BASIC
-- read further you will get it
-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- vim options
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = true

-- LOADING
require('keybinds')
require('uigroup')
require('lsp')
require('packages')

-- Lua:
vim.cmd[[colorscheme dracula]]
vim.opt.number = true
vim.opt.relativenumber = true
