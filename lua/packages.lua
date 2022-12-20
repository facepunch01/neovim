-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
vim.g.coq_settings = { auto_start = 'shut-up' }
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
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
  -- nvim-tree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
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
	use {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'}
	use { 'jghauser/mkdir.nvim' }
	use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
    end
  }
end)
