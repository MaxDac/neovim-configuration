local currentBufferChangeDirection = 0 -- 0 stands for going backwards, 1 for moving forward
local map = vim.api.nvim_set_keymap
local opts = { noremap = false, silent = true }

function toggleBuffer()
  if currentBufferChangeDirection == 1 then
    print "Changing value to 0"
    currentBufferChangeDirection = 0
    vim.cmd('bnext')
  else
    print "Changing value to 1"
    currentBufferChangeDirection = 1
    vim.cmd('bprevious')
  end
end

-- Move to previous/next
map('n', '<C-n>', '<Cmd>lua toggleBuffer()<CR>', opts)
