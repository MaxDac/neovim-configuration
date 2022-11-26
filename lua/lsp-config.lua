lspconfig = require('lspconfig')
local rust_tools = require('rust-tools')

-- `on_attach` callback will be called after a language server
-- instance has been attached to an open buffer with matching filetype
-- here we're setting key mappings for hover documentation, goto definitions, goto references, etc
-- you may set those key mappings based on your own preference
local on_attach = function(client, bufnr)
  local opts = { noremap=true, silent=true }

  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  vim.api.nvim_buf_set_option(bufnr, 'tagfunc', 'v:lua.vim.lsp.tagfunc')

  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>cr', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>cf', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>cs', '<cmd>lua vim.lsp.buf.formatting_seq_sync()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>cd', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
end

local rust_on_attach = function(client, bufnr)
  on_attach(client, bufnr)

  require('completion').on_attach(client)
end

local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

-- lspconfig.sumneko_lua.setup {
--   settings = {
--     Lua = {
--       runtime = {
--         -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
--         version = 'LuaJIT',
--       },
--       diagnostics = {
--         -- Get the language server to recognize the `vim` global
--         globals = {'vim'},
--       },
--       workspace = {
--         -- Make the server aware of Neovim runtime files
--         library = vim.api.nvim_get_runtime_file("", true),
--       },
--       -- Do not send telemetry data containing a randomized but unique identifier
--       telemetry = {
--         enable = false,
--       },
--     },
--   },
--   capabilities = capabilities
-- }

-- setting up the elixir language server
-- you have to manually specify the entrypoint cmd for elixir-ls
lspconfig.elixirls.setup {
  cmd = { "elixir-ls" },
  on_attach = on_attach,
  capabilities = capabilities
}

lspconfig.efm.setup({
  capabilities = capabilities,
  on_attach = on_attach,
  filetypes = {"elixir"}
})

lspconfig.html.setup({
  -- Custom command for the new executables for vscode html language server
  cmd = {'html-languageserver', '--stdio'},
  capabilities = capabilities,
  -- Adding heex files 
  filetypes = {'html', 'heex', 'sface'}
})

lspconfig.cssls.setup({
  -- Custom command for the new executables for vscode html language server
  cmd = {'css-languageserver', '--stdio'},
  capabilities = capabilities
})

lspconfig.tsserver.setup({
  capabilities = capabilities,
  filetypes = {'typescript', 'typescriptreact', 'typescript.tsx'},
  root_dir = function() return vim.loop.cwd() end
})

lspconfig.eslint.setup({
  capabilities = capabilities
})

lspconfig.flow.setup({
  capabilities = capabilities,
  root_dir = function() return vim.loop.cwd() end
})

lspconfig.rust_analyzer.setup({
  on_attach = rust_on_attach,
  capabilities = capabilities,
  settings = {
    ["rust-analyzer"] = {
      imports = {
        granularity = {
          group = "module",
        },
        prefix = "self"
      },
      cargo = {
        buildScripts = {
          enable = true
        }
      },
      procMacro = {
        enable = true
      }
    }
  }
})
