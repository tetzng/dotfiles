---@class LazyPluginSpec
local M = {
  "tetzng/random-colorscheme.nvim",
  lazy = false,
  priority = 1000,
  dependencies = {
    {
      "folke/tokyonight.nvim",
      config = true,
    },
    {
      "rebelot/kanagawa.nvim",
      config = true,
    },
    {
      "catppuccin/nvim",
      name = "catppuccin",
      config = true,
    },

  },
  ---@class RandomColorscheme.UserConfig
  opts = {
    colorschemes = {
      "tokyonight-night",
      "tokyonight-moon",
      "tokyonight-storm",
      "catppuccin-mocha",
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
