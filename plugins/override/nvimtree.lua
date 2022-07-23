local M = {}

M.git = {
   enable = true,
   ignore = true,
}

M.diagnostics = {
   enable = true,
   show_on_dirs = false,
   icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
   },
}

M.renderer = {
   highlight_git = true,
   highlight_opened_files = "none", -- icon, name, all, none

   indent_markers = {
      enable = false,
   },

   icons = {
      show = {
         file = true,
         folder = true,
         folder_arrow = true,
         git = true,
      },

      glyphs = {
         default = "",
         symlink = "",
         folder = {
            default = "",
            empty = "",
            empty_open = "",
            open = "",
            symlink = "",
            symlink_open = "",
            arrow_open = "",
            arrow_closed = "",
         },
         git = {
            unstaged = "✗",
            staged = "✓",
            unmerged = "",
            renamed = "➜",
            untracked = "★",
            deleted = "",
            ignored = "◌",
         },
      },
   },
}

return M
