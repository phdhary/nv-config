local M = {}
M.ui = {
   theme = "catppuccin",
   theme_toggle = { "catppuccin", "catppuccin_latte" },
}

M.options = require "custom.options"
M.mappings = require "custom.mappings"
M.plugins = require "custom.plugins"

return M
