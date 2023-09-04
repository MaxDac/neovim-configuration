local set_n = function(lhs, rhs, opts)
  vim.keymap.set('n', lhs, rhs, opts)
end

set_n('<space>e', vim.diagnostic.open_float)
set_n('[d', vim.diagnostic.goto_prev)
set_n(']d', vim.diagnostic.goto_next)
set_n('<space>q', vim.diagnostic.setloclist)

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

-- Configuring mason before requiring lspconfig
require('mason').setup()
require('mason-lspconfig').setup {
  ensure_installed = {
    'elixirls',
    -- efm can't be installed automatically with Mason
    -- 'efm',
    'html',
    'cssls',
    'tsserver',
    'tailwindcss',
    'lua_ls',
    'svelte',
  }
}

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
  capabilities = capabilities,
  filetypes = {
    'html',
    'heex',
    'sface'
  }
}

lspconfig.cssls.setup {
  capabilities = capabilities
}

lspconfig.tsserver.setup {
  capabilities = capabilities
}

lspconfig.tailwindcss.setup {
  capabilities = capabilities,
  init_options = {
    userLanguages = {
      elixir = "phoenix-heex",
      heex = "phoenix-heex",
      svelte = "html",
    }
  },
  handlers = {
    ["tailwindcss/getConfiguration"] = function(_, _, params, _, bufnr, _)
      vim.lsp.buf_notify(bufnr, "tailwindcss/getConfigurationResponse", { _id = params._id })
    end
  },
  settings = {
    includeLanguages = {
      typescript = "javascript",
      typescriptreact = "javascript",
      ["html-eex"] = "html",
      ["phoenix-eex"] = "html",
      heex = "html",
      eelixir = "html",
      svelte = "html",
    },
    tailwindCSS = {
      lint = {
		    cssConflict = "warning",
		    invalidApply = "error",
		    invalidConfigPath = "error",
		    invalidScreen = "error",
		    invalidTailwindDirective = "error",
		    invalidVariant = "error",
		    recommendedVariantOrder = "warning",
      }
    }
  },
  filetypes = {
    "css",
    "scss",
    "sass",
    "html",
    "heex",
    "elixir",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "svelte",
  }
}

lspconfig.svelte.setup {
  capabilities = capabilities
}

lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT'
      },
      diagnostics = {
        -- Gets the language server to recognise vim
        globals = {
          'vim',
          'require',
        },
      },
      -- Make the server aware of Neovim runtime files
      workspace = {
        library = { vim.api.nvim_get_runtime_file("", true) }
      },
      telemetry = {
        enable = false,
      },
    },
  },
  capabilities = capabilities
}
