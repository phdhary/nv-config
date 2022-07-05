local M = {}

M.setup_lsp = function(attach, capabilities)
   local lspconfig = require "lspconfig"

   -- lspservers with default config
   local servers = {
      "cssls",
      "emmet_ls",
      "eslint",
      "gopls",
      "html",
      "intelephense",
      "jsonls",
      "marksman",
      "pyright",
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
end

return M
