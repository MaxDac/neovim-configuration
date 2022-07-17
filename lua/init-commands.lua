vim.cmd([[
  set tabstop=2
  set shiftwidth=2
  set expandtab
  set smartindent

  autocmd VimEnter * NvimTreeToggle
  
  set number
]])

-- Trying to associate the command ':lua vim.lsp.buf.definition()' to a key shortcut 
vim.api.nvim_set_keymap('n', '<C-b>', ':lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })

