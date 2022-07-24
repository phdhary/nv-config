local M = {}

M.signs = {
  add = { hl = "DiffAdd", text = "│", numhl = "GitSignsAddNr" },
  change = { hl = "DiffChange", text = "│", numhl = "GitSignsChangeNr" },
  delete = { hl = "DiffDelete", text = "", numhl = "GitSignsDeleteNr" },
  topdelete = { hl = "DiffDelete", text = "‾", numhl = "GitSignsDeleteNr" },
  changedelete = { hl = "DiffChangeDelete", text = "~", numhl = "GitSignsChangeNr" },
}
M.current_line_blame = true
M.current_line_blame_opts = {
  virt_text = true,
  virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
  delay = 1000,
  ignore_whitespace = false,
}

return M
