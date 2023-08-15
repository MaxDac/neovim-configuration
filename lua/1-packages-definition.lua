require('packer').startup(function(use)
  use { 'wbthomason/packer.nvim' }

  -- LSP integration
  use 'neovim/nvim-lspconfig'

  -- Icons
  use 'kyazdani42/nvim-web-devicons'

  -- Error visualisation
  use {
    'folke/trouble.nvim',
    requires = 'kyazdani42/nvim-web-devicons'
  }

  -- Autocompletion packages
  use 'hrsh7th/nvim-cmp'

  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'hrsh7th/cmp-buffer' }
  use { 'hrsh7th/cmp-path' }
  use { 'hrsh7th/cmp-cmdline' }

  -- Installing snippet engine for nvim-cmp
  use { 'hrsh7th/vim-vsnip' }
  use { 'hrsh7th/cmp-vsnip' }

  -- Treesitter
  use 'nvim-treesitter/nvim-treesitter'

  -- Telescope
  use 'nvim-lua/plenary.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'ThePrimeagen/git-worktree.nvim',
    }
  }

  -- Status bar
  use {
    'nvim-lualine/lualine.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons',
      opt = true,
    }
  }

  use {
    'akinsho/toggleterm.nvim',
    tag = '*',
  }

  -- Colour scheme
  use 'EdenEast/nightfox.nvim'
end)
