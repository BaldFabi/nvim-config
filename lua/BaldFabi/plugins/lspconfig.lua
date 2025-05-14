return {
  'neovim/nvim-lspconfig',
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "nvimtools/none-ls.nvim",

    "j-hui/fidget.nvim",

    "folke/neodev.nvim",
  },
  config = function()
    local servers = {
      volar = {},
      ansiblels = {},
      gopls = {},
      pyright = {},
      rust_analyzer = {},
      ts_ls = {},
      marksman = {},
      terraformls = {},
      tailwindcss = {
        filetypes = {
          'templ',
          'html'
        },
        init_options = {
          userLanguages = {
            templ = "html"
          }
        }
      },
      yamlls = {},
      lua_ls = {
        Lua = {
          workspace = { checkThirdParty = false },
          telemetry = { enable = false },
        },
      },
      templ = {},
    }

    require("neodev").setup()

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

    require("mason").setup()

    local mason_lspconfig = require("mason-lspconfig")

    mason_lspconfig.setup {
      ensure_installed = vim.tbl_keys(servers),
    }

    local handlers = {
      ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "single" }),
      ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "single" }),
    }

    local on_attach = function(_, bufnr)
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { noremap = false })

      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { noremap = false })
      vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, { noremap = false })
      vim.keymap.set('n', 'gI', vim.lsp.buf.implementation, { noremap = false })
      vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, { noremap = false })
      vim.keymap.set('n', '<leader>ds', require('telescope.builtin').lsp_document_symbols, { noremap = false })
      vim.keymap.set('n', '<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, { noremap = false })

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { noremap = false })
      vim.keymap.set('n', '<C-s>', vim.lsp.buf.signature_help, { noremap = false })

      vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
        vim.lsp.buf.format()
      end, { desc = 'Format current buffer with LSP' })

      vim.api.nvim_command(
        'autocmd BufWritePre *.go,*.tf,*.js,*.tsx,*.ts,*.md,*.css,*.scss,*.sass,*.yaml,*.yml,*.json,*.html,*.lua,*.templ,*.vue :Format')
    end

    vim.lsp.config("*", {
      on_attach = on_attach,
      handlers = handlers,
      capabilities = capabilities,
    })

    for _, lsp in ipairs(vim.tbl_keys(servers)) do
      vim.lsp.config(lsp, {
        settings = servers[lsp],
      })
    end

    local null_ls = require('null-ls')
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.goimports,
        null_ls.builtins.formatting.prettier,
      }
    })
  end
}
