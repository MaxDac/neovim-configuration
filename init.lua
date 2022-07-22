local execute = vim.api.nvim_command
local fn = vim.fn
local fmt = string.format

require('initial-settings')
require('ensure')
require('usings')
require('elixir-config')
require('helpers')
require('treesitter-config')
require('barbar-mapping')
require('nvim-tree-config')
require('git-plugin-config')
require('nulls-nvim-config')
require('terminal-config')
require('status-bar-config')
require('initial-commands')

