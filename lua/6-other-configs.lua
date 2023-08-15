require('toggleterm').setup {
  direction = 'float',
  open_mapping = [[<c-t>]],
}

require('trouble').setup {
  position = "bottom",
  height = 10,
  icons = true
}

require('lualine').setup()

require('bufferline').setup {
  options = {
    close_icon = 'x',
    buffer_close_icon = 'x'
  }
}

require('nightfox').setup {
  palettes = {
    terafox = {
      bg0 = "#000000",
      bg1 = "#1d1a20",
      bg2 = "#121820",
    }
  }
}

vim.cmd('colorscheme terafox')
