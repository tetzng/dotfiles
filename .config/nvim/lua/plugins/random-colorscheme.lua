---@class LazyPluginSpec
local M = {
  "tetzng/random-colorscheme.nvim",
  lazy = false,
  dependencies = {
    "folke/tokyonight.nvim",
    "rebelot/kanagawa.nvim",
    {
      "catppuccin/nvim",
      name = "catppuccin",
    },

  },
  ---@class RandomColorscheme.UserConfig
  opts = {
    colorschemes = {
      "tokyonight-night",
      "tokyonight-moon",
      "tokyonight-storm",
      "catppuccin-mocha",
      "catppuccin-frappe",
      "catppuccin-macchiato",
      "kanagawa-wave",
      "kanagawa-dragon",
    },
    set_on_load = true,
  },
  keys = {
    { "<leader>cc", function() require("random-colorscheme").set() end, desc = "Set Random Colorscheme" },
  },
}

return M
