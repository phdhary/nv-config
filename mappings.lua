local M = {}

M.telescope = {
  n = {
    ["<leader>fl"] = { "<cmd> Telescope flutter commands<CR>", "   flutter tools" },
    -- ["<leader>rr"] = { "<cmd> '%s/' . @/ . '//gc' norm <LEFT><LEFT><LEFT>'", "replace all" },
  },
}
return M
