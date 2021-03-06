local execute = vim.api.nvim_command
local fn = vim.fn
local fmt = string.format

require('initial-settings')
require('ensures')
require('usings')
require('elixir-config')
require('autocomplete-config')
require('trouble-config')
require('treesitter-config')
require('barbar-mapping')
require('nvim-tree-config')
require('git-plugins-config')
require('nulls-nvim-config')
require('terminal-config')
require('status-bar-config')
require('telescope-config')
require('initial-commands')

