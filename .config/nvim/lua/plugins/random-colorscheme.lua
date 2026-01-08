---@class LazyPluginSpec
local M = {
  "tetzng/random-colorscheme.nvim",
  lazy = false,
  priority = 1000,
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
    {
      "projekt0n/github-nvim-theme",
      main = "github-theme",
      opts = {
        options = {
          transparent = true,
        },
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
      "github_dark_dimmed",
      "github_dark_tritanopia",
    },
    set_on_load = false,
  },
  keys = {
    { "<leader>cc", function() require("random-colorscheme").set() end, desc = "Set Random Colorscheme" },
  },
}

return M
