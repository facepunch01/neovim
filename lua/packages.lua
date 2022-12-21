-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- LAZY PACKAGE MANAGER
vim.g.coq_settings = { auto_start = 'shut-up' }
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--single-branch",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.runtimepath:prepend(lazypath)
require("lazy").setup({
	-- Base deps
	'nvim-lua/plenary.nvim',
	'kyazdani42/nvim-web-devicons',
	-- CODE EDITING
  -- Lsp
  { 'ms-jpq/coq_nvim', branch = "coq" },
  { 'ms-jpq/coq.artifacts', branch = "artifacts" },
  { 'ms-jpq/coq.thirdparty', branch = "3p"},
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  -- Undo tree
	'mbbill/undotree',
  -- Auto pairs like (that)
	{
	  "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  },
  -- Auto path fixing
	'jghauser/mkdir.nvim',
  	-- markdown
	"ellisonleao/glow.nvim",
	-- JUMP fast
	'tpope/vim-repeat',
	'ggandor/leap.nvim',
	-- Magit in neovim
  'TimUntersberger/neogit',
	-- fine treesitter
  {
      'nvim-treesitter/nvim-treesitter',
      run = function()
          local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
         ts_update()
      end,
	},
	'nvim-treesitter/playground',

	-- UI
  'Mofiqul/dracula.nvim',
	-- lualine
  'nvim-lualine/lualine.nvim',
  -- Tabline
	{ 'echasnovski/mini.tabline', branch = 'stable' },
  -- Noice
	({
    "folke/noice.nvim",
    config = function()
      require("noice").setup({
          -- add any options here
      })
    end,
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    }
  }),
	-- fast file explorer
	{ 'SidOfc/carbon.nvim', lazy = false },
	-- startpage
	{
      'goolord/alpha-nvim',
      config = function ()
          require'alpha'.setup(require'alpha.themes.startify'.config)
      end,
			lazy = false
  },
	({
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function()
        local saga = require("lspsaga")

        saga.init_lsp_saga({
            -- your configuration
        })
    end,
  })
})
