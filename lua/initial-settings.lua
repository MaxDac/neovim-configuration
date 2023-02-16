vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.smartindent = true
-- Shows the line number
vim.o.number = true
-- Set relative number from the current line 
vim.o.relativenumber = true
vim.o.termguicolors = true

-- Trying to associate the command ':lua vim.lsp.buf.definition()' to a key shortcut 
vim.api.nvim_set_keymap('n', '<C-b>', ':lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-n>', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-N>', ':bprevious<CR>', { noremap = true, silent = true })

