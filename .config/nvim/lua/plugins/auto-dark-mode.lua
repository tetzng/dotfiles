---@class LazyPluginSpec
local M = {
  "f-person/auto-dark-mode.nvim",
  lazy = false,
  opts = {
    set_dark_mode = function()
      vim.cmd("colorscheme catppuccin-frappe")
    end,
    set_light_mode = function()
      vim.cmd("colorscheme catppuccin-latte")
    end,
  }
}

return M
