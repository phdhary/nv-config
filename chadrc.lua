local M = {}

M.ui = {
   theme = "catppuccin",
}
M.options = { user = require("custom.options").options() }
M.mappings = require("custom.mappings")
M.plugins = require("custom.plugins")
return M
