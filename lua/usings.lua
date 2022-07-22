require('packer').startup(function(use)
  -- install all the plugins you need here

  -- the plugin manager can manage itself
  use {'wbthomason/packer.nvim'}

  -- lsp config for elixir-ls support
  use {'neovim/nvim-lspconfig'}

  -- cmp framework for auto-completion support
  use {'hrsh7th/nvim-cmp'}

  -- install different completion source
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-buffer'}
  use {'hrsh7th/cmp-path'}
  use {'hrsh7th/cmp-cmdline'}

  -- you need a snippet engine for snippet support
  -- here I'm using vsnip which can load snippets in vscode format
  use {'hrsh7th/vim-vsnip'}
  use {'hrsh7th/cmp-vsnip'}

  -- treesitter for syntax highlighting and more
  use {'nvim-treesitter/nvim-treesitter'}

  -- NerdTree
  -- use {'scrooloose/nerdtree'}
  -- use {'Xuyuanp/nerdtree-git-plugin'}
  -- use {'ryanoasis/vim-devicons'}

  -- Dev icons
  use {'kyazdani42/nvim-web-devicons'}

  -- nvim-tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- Git Extensions
  use {
    'lewis6991/gitsigns.nvim',
    -- tag = 'release' -- To use the latest release
  }
  use {'APZelos/blamer.nvim'}
  use {'nvim-lua/plenary.nvim'}
  use {'sindrets/diffview.nvim'}
  use {
    'tanvirtin/vgit.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }

  -- BarBar
  use {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  }

  -- nulls-nvim
  use {'jose-elias-alvarez/null-ls.nvim'}
  use {'vim-test/vim-test'}

  -- terminal
  use {"akinsho/toggleterm.nvim", tag = 'v2.*', config = function()
    require("toggleterm").setup()
  end}

  -- status bar
  -- use {'feline-nvim/feline.nvim'}
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Telescope
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
end)

