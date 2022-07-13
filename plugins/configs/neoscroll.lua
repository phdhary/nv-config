local present, neoscroll = pcall(require, "neoscroll")

if not present then
   return
end

local options = {
   -- All these keys will be mapped to their corresponding default scrolling animation
   mappings = { "<C-u>", "<C-d>", "<C-b>", "<C-f>", "<C-y>", "<C-e>", "zt", "zz", "zb" },
   hide_cursor = true, -- Hide cursor while scrolling
   stop_eof = true, -- Stop at <EOF> when scrolling downwards
   use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
   respect_scrolloff = false, -- Stop scrolling when the cursor reaches the scrolloff margin of the file
   cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
   easing_function = nil, -- Default easing function
   pre_hook = nil, -- Function to run before the scrolling animation starts
   post_hook = nil, -- Function to run after the scrolling animation ends
   performance_mode = false, -- Disable "Performance Mode" on all buffers.
}

local config = require "neoscroll.config"
local mappings = {}

mappings["<C-u>"] = { "scroll", { "-vim.wo.scroll", "true", "100", nil } }
mappings["<C-d>"] = { "scroll", { "vim.wo.scroll", "true", "100", nil } }
mappings["<C-b>"] = { "scroll", { "-vim.api.nvim_win_get_height(0)", "true", "100", nil } }
mappings["<C-f>"] = { "scroll", { "vim.api.nvim_win_get_height(0)", "true", "100", nil } }
mappings["<C-y>"] = { "scroll", { "-0.10", "false", "50", nil } }
mappings["<C-e>"] = { "scroll", { "0.10", "false", "50", nil } }
mappings["zt"] = { "zt", { "100" } }
mappings["zz"] = { "zz", { "100" } }
mappings["zb"] = { "zb", { "100" } }

neoscroll.setup { options }
config.set_mappings(mappings)
