-- vim:foldmethod=marker
local M = {}

M.user = {
   ["tpope/vim-surround"] = {},
   ["tpope/vim-fugitive"] = {},
   ["tpope/vim-repeat"] = {},
   ["andymass/vim-matchup"] = {},
   ["ggandor/lightspeed.nvim"] = {},
   ["kdheepak/lazygit.nvim"] = {
      cmd = { "LazyGit" },
   },
   ["fladson/vim-kitty"] = {
      ft = { "kitty" },
   },
   ["folke/zen-mode.nvim"] = {
      cmd = { "ZenMode" },
   },

   ["goolord/alpha-nvim"] = {
      after = "base46",
      disable = false,
      config = function()
         require "custom.plugins.configs.alpha"
      end,
   },

   ["karb94/neoscroll.nvim"] = {
      disable = false,
      cond = function()
         local neovide = vim.g.neovide
         if neovide == true then
            return false
         elseif neovide == nil then
            return true
         end
      end,
      config = function()
         require "custom.plugins.configs.neoscroll"
      end,
   },

   ["akinsho/flutter-tools.nvim"] = {
      after = "nvim-lspconfig",
      ft = { "dart" },
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
      after = "nvim-lspconfig",
      disable = true,
      config = function()
         require "custom.plugins.configs.refactoring"
      end,
   },

   ["iamcco/markdown-preview.nvim"] = {
      ft = { "markdown" },
      run = function()
         vim.fn["mkdp#util#install"]()
      end,
      setup = function()
         vim.g.mkdp_filetypes = { "markdown" }
      end,
   },
}

M.options = {
   lspconfig = {
      setup_lspconf = "custom.plugins.configs.lspconfig",
   },
}

M.override = {
   ["nvim-treesitter/nvim-treesitter"] = require "custom.plugins.override.treesitter",
   ["lewis6991/gitsigns.nvim"] = require "custom.plugins.override.gitsigns",
   ["kyazdani42/nvim-tree.lua"] = require "custom.plugins.override.nvimtree",
}

return M
