local M = {}

M.telescope = {
   n = {
      ["<leader>fl"] = { "<cmd> Telescope flutter commands<CR>", "   flutter tools" },
      ["<leader>fk"] = { "<cmd> lua vim.lsp.buf.formatting()<CR>", "👊 lsp force format" },
      ["<leader>ca"] = { "<cmd> CodeActionMenu<CR>", "  lsp code action menu" },
      ["<leader>zn"] = { "<cmd> ZenMode<CR>", "🙏 zen mode" },
      ["<leader>gg"] = { "<cmd> LazyGit<CR>", " open lazy git" },
      ["<leader>mp"] = { "<cmd> MarkdownPreviewToggle<CR>", "  markdown preview toggle" },
   },
}

return M
