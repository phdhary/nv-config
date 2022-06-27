-- vim:foldmethod=marker
local M = {}

M.user = {
-- tpope {{{
  ["tpope/vim-surround"] = {},

  ["tpope/vim-fugitive"] = {},

  ["tpope/vim-repeat"] = {},
-- }}}
  ["kdheepak/lazygit.nvim"] = {},

  ["fladson/vim-kitty"] = {},

  ["andymass/vim-matchup"] = {},

  ["ggandor/lightspeed.nvim"] = {
    disable = false,
  },

  ["ggandor/leap.nvim"] = {
    disable = true,
    -- config = require("leap").set_default_keymaps(),
  },

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
}

M.override = {
  ["nvim-treesitter/nvim-treesitter"] = require("custom.plugins.configs.treesitter"),
}

return M
