-- Adding custom mapping for Copilot than TAB
vim.keymap.set('i', '<M-.>', '<Plug>(copilot-next)', { noremap = false })
vim.keymap.set('i', '<M-,>', '<Plug>(copilot-previous)', { noremap = false })
vim.keymap.set('i', '<C-/>', "copilot#Accept('<CR>')", { expr = true, silent = true })
