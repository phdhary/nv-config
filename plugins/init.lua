local M = {}

M.user = {
  ["tpope/vim-surround"] = {},

  ["tpope/vim-fugitive"] = {},

  ["kdheepak/lazygit.nvim"] = {},

  ["fladson/vim-kitty"] = {},

  ["goolord/alpha-nvim"] = {
     disable = false,
  },

  ["karb94/neoscroll.nvim"] = {
    disable = false,
    config = function ()
      require("custom.plugins.configs.neoscroll")
    end,
  },

  ["akinsho/flutter-tools.nvim"] = {
    config = function ()
      require("custom.plugins.configs.nvim_flutter")
    end,
  },

  -- ["jose-elias-alvarez/null-ls.nvim"] = {
  --   after = "nvim-lspconfig",
  --   config = function ()
  --     require("custom.plugins.configs.null_ls")
  --   end
  -- }
}
M.options = {
  lspconfig = {
    setup_lspconf = "custom.plugins.configs.lspconfig",
  },

 -- override = {
 --   ["nvim-telescope/telescope.nvim"] = {
 --     extensions_list = { "flutter", "themes", "terms" },
 --   },
 -- },
}

return M
