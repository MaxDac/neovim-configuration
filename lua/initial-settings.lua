vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.number = true
vim.o.termguicolors = true

-- Trying to associate the command ':lua vim.lsp.buf.definition()' to a key shortcut 
vim.api.nvim_set_keymap('n', '<C-b>', ':lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })

