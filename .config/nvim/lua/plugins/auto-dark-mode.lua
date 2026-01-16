---@class LazyPluginSpec
local M = {
  "f-person/auto-dark-mode.nvim",
  lazy = false,
  priority = 2000,
  opts = {
    set_dark_mode = function()
      vim.cmd("colorscheme catppuccin-frappe")
    end,
    set_light_mode = function()
      vim.cmd("colorscheme catppuccin-latte")
    end,
  },
  denpendencies = {
    {
      "catppuccin/nvim",
      name = "catppuccin",
      opts = {
        transparent_background = true,
      },
    },
  },
}

return M
