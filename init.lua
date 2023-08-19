vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.termguicolors = true

vim.g.mapleader = " "

require('1-packages-definition')
require('2-nvim-cmp-configuration')
require('3-lsp-config')
require('4-nvim-treesitter-config')
require('5-telescope-config')
require('6-other-configs')
require('7-other-settings')
require('8-copilot')
