-- vim:foldmethod=marker
local M = {}

M.user = {
   -- Tim Pope's {{{
   ["tpope/vim-surround"] = {},
   ["tpope/vim-fugitive"] = {},
   ["tpope/vim-repeat"] = {},
   -- }}}
   ["kdheepak/lazygit.nvim"] = {},
   ["fladson/vim-kitty"] = {},
   ["andymass/vim-matchup"] = {},
   ["ggandor/lightspeed.nvim"] = {},

   ["goolord/alpha-nvim"] = {
      after = "base46",
      disable = false,
      config = function()
         require "custom.plugins.configs.alpha"
      end,
   },

   ["karb94/neoscroll.nvim"] = {
      disable = false,
      config = function()
         require "custom.plugins.configs.neoscroll"
      end,
   },

   ["akinsho/flutter-tools.nvim"] = {
      config = function()
         require "custom.plugins.configs.nvim_flutter"
      end,
   },

   ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require "custom.plugins.configs.null_ls"
      end,
   },

   ["weilbith/nvim-code-action-menu"] = {
      cmd = { "CodeActionMenu" },
   },

   ["ThePrimeagen/refactoring.nvim"] = {
      disable = true,
      config = function()
         require "custom.plugins.configs.refactoring"
      end,
   },
}

M.options = {
   lspconfig = {
      setup_lspconf = "custom.plugins.configs.lspconfig",
   },
}

M.override = {
   ["nvim-treesitter/nvim-treesitter"] = require "custom.plugins.configs.treesitter",
}

return M
