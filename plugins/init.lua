local M = {}

M.user = {
  ["goolord/alpha-nvim"] = {
     disable = false,
  },

  ["fladson/vim-kitty"] = {},

  ["karb94/neoscroll.nvim"] = {
    config = function ()
      require("custom.plugins.configs.neoscroll")
    end,
  },

  ["akinsho/flutter-tools.nvim"] = {
    config = function ()
      require("custom.plugins.configs.nvim_flutter")
    end,
  },

  ["tpope/vim-surround"] = {},

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
}

 -- override = {
 --   ["nvim-telescope/telescope.nvim"] = {
 --     extensions_list = { "flutter", "themes", "terms" },
 --   },
 -- },
return M
