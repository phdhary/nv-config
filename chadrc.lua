local M = {}

M.ui = {
   theme = "catppuccin",
}
M.options = {
  user = function ()
   vim.opt.showmode = false
   vim.opt.rnu = true
   vim.cmd "au TextYankPost * silent! lua vim.highlight.on_yank()"
  end,
}
M.mappings = require("custom.mappings")
M.plugins = require("custom.plugins")
return M
