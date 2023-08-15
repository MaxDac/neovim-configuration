require('packer').startup(function(use)
  use 'wbthomason/packer.vim'

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
  use 'hrsh7th/cpm-nvim-lsp'
  use 'hrsh7th/cpm-buffer'
  use 'hrsh7th/cpm-path'
  use 'hrsh7th/cpm-cmdline'

  -- Installing snippet engine for nvim-cmp
  use 'hrsh7th/cmd-vsnip'
  use 'hrsh7th/vim-vsnip'

  -- Treesitter
  use 'nvim-treesitter/nvim-treesitter'

  -- Telescope
  use 'nvim-lua/plenary.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }

  use {
    'akinsho/toggleterm.nvim',
    tag = '*',
  }

end)
