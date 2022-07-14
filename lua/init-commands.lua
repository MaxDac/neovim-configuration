vim.cmd([[
  set tabstop=2
  set shiftwidth=2
  set expandtab
  set smartindent

  autocmd VimEnter * NvimTreeToggle
  autocmd VimEnter * vertical resize +15
  autocmd VimEnter * wincmd w
  autocmd VimEnter * split
  autocmd VimEnter * wincmd w
  autocmd VimEnter * terminal
  autocmd VimEnter * resize 15
  autocmd VimEnter * wincmd p
  
  set number
]])

