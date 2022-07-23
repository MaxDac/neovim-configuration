vim.api.nvim_create_autocmd('VimEnter', { command = 'NvimTreeToggle' })
-- vim.api.nvim_create_autocmd('VimEnter', { command = 'NERDTree' })

vim.cmd([[
:colorscheme halcyon
set colorcolumn=120
hi ColorColumn ctermbg=DarkGray guibg=DarkGray
]])

