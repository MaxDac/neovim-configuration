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
    truncate_names = false
  }
}
--   options = {
--     close_icon = 'x',
--     buffer_close_icon = 'x'
--   }
-- }

require('nightfox').setup {
  palettes = {
    terafox = {
      bg0 = "#000000",
      bg1 = "#1d1a20",
      bg2 = "#121820",
    }
  }
}

require('neotest').setup {
  adapters = {
    require('neotest-plenary'),
    require('neotest-elixir'),
  }
}

require("neodev").setup({
  library = { plugins = { "neotest" }, types = true },
})

vim.cmd('colorscheme terafox')
