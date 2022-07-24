local M = {}

M.setup_lsp = function(attach, capabilities)
   local lspconfig = require "lspconfig"

   -- lspservers with default config
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
         on_attach = attach,
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
end

return M
