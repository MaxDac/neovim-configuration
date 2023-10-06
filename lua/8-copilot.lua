-- Adding custom mapping for Copilot than TAB
vim.keymap.set('i', '<M-.>', '<Plug>(copilot-next)', { noremap = false })
vim.keymap.set('i', '<M-,>', '<Plug>(copilot-previous)', { noremap = false })
-- `replace_keycodes` is set to false to allow the mapping to be used in insert mode
vim.keymap.set('i', '<C-j>', "copilot#Accept('<CR>')", { noremap = true, expr = true, silent = true, replace_keycodes = false})
