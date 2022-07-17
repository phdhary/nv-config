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
      -- "rust_analyzer",
      "taplo",
      "tsserver",
      "vimls",
      "vuels",
      "yamlls",
   }

   lspconfig.emmet_ls.setup {
      filetypes = {
         "html",
         "css",
         "javascript",
         "javascriptreact",
         "typescriptreact",
         "typescript",
      },
   }

   lspconfig.gopls.setup {
      settings = {
         gopls = {
            hints = {
               assignVariableTypes = true,
               compositeLiteralFields = true,
               compositeLiteralTypes = true,
               constantValues = true,
               functionTypesParameters = true,
               parameterNames = true,
               rangeVariableTypes = true,
            },
            usePlaceholders = true,
         },
      },
   }

   for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup {
         on_attach = attach,
         capabilities = capabilities,
      }
   end
end

return M
