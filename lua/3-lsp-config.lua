local set_n = function(lhs, rhs, opts)
  vim.keymap.set('n', lhs, rhs, opts)
end

set_n('<space>e', vim.diagnostic.open_float)
set_n('n', '[d', vim.diagnostic.goto_prev)
set_n('n', ']d', vim.diagnostic.goto_next)
set_n('n', '<space>q', vim.diagnostic.setloclist)

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Mappings under review
    -- local opts = { buffer = ev.buf }
    -- vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    -- vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    -- vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    -- vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    -- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    -- vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    -- vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    -- vim.keymap.set('n', '<space>wl', function()
    --   print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    -- end, opts)
    -- vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    -- vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    -- vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    -- vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    -- vim.keymap.set('n', '<space>f', function()
    --   vim.lsp.buf.format { async = true }
    -- end, opts)
  end,
})

-- Configuring language servers
local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities() -- vim.lsp.protocol.make_client_capabilities()

-- Elixir
lspconfig.elixirls.setup {
  cmd = { "elixir-ls" },
  capabilities = capabilities
}

lspconfig.efm.setup {
  filetypes = { 'elixir' },
  capabilities = capabilities
}

lspconfig.html.setup {
  cmd = { 'html-languageserver', '--stdio' },
  capabilities = capabilities,
  filetypes = {
    'html',
    'heex',
    'sface'
  }
}

lspconfig.cssls.setup {
  cmd = { 'css-languageserver', '--stdio' },
  capabilities = capabilities
}

lspconfig.tailwindcss.setup {
  cmd = { 'tailwindcss-language-server', '--stdio' },
  capabilities = capabilities
}
