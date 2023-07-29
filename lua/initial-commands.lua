vim.api.nvim_create_autocmd('VimEnter', { command = 'NvimTreeToggle' })
-- vim.api.nvim_create_autocmd('VimEnter', { command = 'NERDTree' })

vim.cmd [[hi ColorColumn ctermbg=DarkGray guibg=DarkGray]]
vim.cmd [[silent! colorscheme halcyon]]
vim.cmd [[set colorcolumn=120]]
vim.cmd [[highlight ColorColumn ctermbg=darkgrey guibg=darkgrey]]
vim.cmd [[set mouse=a]]

