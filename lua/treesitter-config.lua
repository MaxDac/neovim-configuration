require'nvim-treesitter.configs'.setup {
  ensure_installed = { "elixir", "lua", "javascript", "html", "css", "surface" },
  sync_install = false,
  ignore_install = { },
  highlight = {
    enable = true,
    disable = { },
  },
}

