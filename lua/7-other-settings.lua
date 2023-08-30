vim.api.nvim_set_keymap('n', '<leader>b', ':lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>p', ':bprevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>o', ':bprevious<CR>', { noremap = true, silent = true })

-- Neotest
vim.api.nvim_set_keymap('n', '<leader>tt', ':lua require("neotest").run.run()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tf', ':lua require("neotest").run.run(vim.fn.expand("%"))<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ts', ':lua require("neotest").summary.toggle()<CR>', { noremap = true, silent = true })
