-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
vim.g.coq_settings = { auto_start = 'shut-up' }
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
	use 'kyazdani42/nvim-web-devicons'
  -- Autocomplete
  use { 'ms-jpq/coq_nvim', branch ="coq" }
  use { 'ms-jpq/coq.artifacts', branch = "artifacts" }
  use { 'ms-jpq/coq.thirdparty', branch = "3p"}
  -- dracula
  use {'Mofiqul/dracula.nvim'}
  -- Mason setup
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }
  -- lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
	-- Auto pairs like (that)
	use {
	  "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  }
	-- markdown
	use {"ellisonleao/glow.nvim"}
  -- Noice
	use({
    "folke/noice.nvim",
    config = function()
      require("noice").setup({
          -- add any options here
      })
    end,
    requires = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    }
  })
	-- Tabline
	use { 'echasnovski/mini.tabline', branch = 'stable' }
	-- Auto path fixing
	use { 'jghauser/mkdir.nvim' }
	-- startpage
	use {
      'goolord/alpha-nvim',
      requires = { 'nvim-tree/nvim-web-devicons' },
      config = function ()
          require'alpha'.setup(require'alpha.themes.startify'.config)
      end
  }
	-- fast file explorer
	use 'SidOfc/carbon.nvim'
	-- JUMP fast
	use 'tpope/vim-repeat'
	use 'ggandor/leap.nvim'
end)
