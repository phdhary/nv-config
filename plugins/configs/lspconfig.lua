local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "bashls",
  "cssls",
  "emmet_ls",
  "eslint",
  "gopls",
  "html",
  "intelephense",
  "jsonls",
  "marksman",
  "pyright",
  "rust_analyzer",
  "taplo",
  "tsserver",
  "vimls",
  "vuels",
  "yamlls",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.emmet_ls.setup {
  filetypes = {
    "css",
    "html",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
  },
}

lspconfig.gopls.setup {
  on_attach = function(client, _)
    client.resolved_capabilities.document_formatting = false
  end,
}

lspconfig.tsserver.setup {
  on_attach = function(client, _)
    client.resolved_capabilities.document_formatting = false
  end,
  settings = {
    ["tsserver"] = {
      javascript = {
        inlayHints = {
          parameterTypes = { enabled = true },
          variableTypes = { enabled = true },
        },
      },
    },
  },
}
