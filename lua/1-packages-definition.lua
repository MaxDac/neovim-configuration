local fmt = string.format
local pack_path = vim.fn.stdpath("data") .. "/site/pack"

-- ensure a given plugin from github.com/<user>/<repo> is cloned in the pack/packer/start directory
local function ensure (user, repo)
  local install_path = fmt("%s/packer/start/%s", pack_path, repo)
  if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    vim.api.nvim_command(fmt("!git clone https://github.com/%s/%s %s", user, repo, install_path))
    vim.api.nvim_command(fmt("packadd %s", repo))
    return true
  end

  return false
end

local function reload_config ()
  dofile(vim.env.MYVIMRC)
end

local packer_ensured = ensure("wbthomason", "packer.nvim")

local packer = require('packer')

packer.startup(function(use)
  use { 'wbthomason/packer.nvim' }

  -- LSP integration
  use 'neovim/nvim-lspconfig'

  -- Icons
  use 'nvim-tree/nvim-web-devicons'

  -- Error visualisation
  use {
    'folke/trouble.nvim',
    requires = 'nvim-trekyazdani42e/nvim-web-devicons'
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
      'nvim-tree/nvim-web-devicons',
      opt = true,
    }
  }

  -- Tabs
  use {'akinsho/bufferline.nvim', tag = "*",
    requires = 'nvim-tree/nvim-web-devicons'}

  use {
    'akinsho/toggleterm.nvim',
    tag = '*',
  }

  -- Colour scheme
  use 'EdenEast/nightfox.nvim'

  -- Mason packages, for automatic LSP downloads
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
  }

  -- Copilot
  -- For a fresh start, after having installed it with packer (`:PackerInstall`), execute the command `:Copilot setup` to login.
  use 'github/copilot.vim'

  -- Unit Testing
  use {
    "nvim-neotest/neotest",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
      "jfpedroza/neotest-elixir",
      "nvim-neotest/neotest-plenary"
    }
  }

  -- ensure the plugin manager is installed
  if packer_ensured then
    packer.sync()
    reload_config()
  end
end)

