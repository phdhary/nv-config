local M = {}
local g = vim.g
local cmd = vim.cmd
local opt = vim.opt

function M.options()
  opt.rnu = true
  opt.guifont = "JetBrainsMono Nerd Font"
  cmd "au TextYankPost * silent! lua vim.highlight.on_yank()"
  g.neovide_refresh_rate=60
  g.neovide_cursor_vfx_mode="railgun"
end

return M
