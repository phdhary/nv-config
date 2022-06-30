local M = {}

M.telescope = {
  n = {
    ["<leader>fl"] = { "<cmd> Telescope flutter commands<CR>", "   flutter tools" },
    ["<leader>fk"] = { "<cmd> lua vim.lsp.buf.formatting()<CR>", "👊 lsp force format" },
    ["<leader>ca"] = { "<cmd> CodeActionMenu<CR>", "  lsp code action menu" },
    -- ["<leader>rr"] = { "<cmd> '%s/' . @/ . '//gc' norm <LEFT><LEFT><LEFT>'", "replace all" },
  },
}

return M
