---@class LazyPluginSpec
local M = {
  "tetzng/random-colorscheme.nvim",
  dependencies = {
    {
      "folke/tokyonight.nvim",
      opts = {
        transparent = true,
      },
    },
    {
      "rebelot/kanagawa.nvim",
      opts = {
        transparent = true,
      },
    },
    {
      "catppuccin/nvim",
      name = "catppuccin",
      opts = {
        transparent_background = true,
      },
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
    set_on_load = false,
  },
  keys = {
    { "<leader>cc", function() require("random-colorscheme").set() end, desc = "Set Random Colorscheme" },
  },
}

return M
