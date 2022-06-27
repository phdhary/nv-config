local M = {}

M.setup_lsp = function(attach, capabilities)
   local lspconfig = require "lspconfig"

   -- lspservers with default config
   local servers = { "html",
                     "cssls",
                     "tsserver",
                     "jsonls",
                     "vimls",
                     "pyright",
                     "marksman",
                     "vuels",
                     "emmet_ls",
                     "yamlls",
                   }

   for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup {
         on_attach = attach,
         capabilities = capabilities,
      }
   end
end

return M
