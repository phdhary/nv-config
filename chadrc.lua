local M = {}

M.ui = {
   theme = "onedark",
}
M.options = {
  user = function ()
   vim.opt.showmode = false
   vim.opt.rnu = true
  end,
}
M.mappings = require("custom.mappings")
M.plugins = require("custom.plugins")
return M
