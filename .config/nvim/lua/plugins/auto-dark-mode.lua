---@class LazyPluginSpec
local M = {
  "f-person/auto-dark-mode.nvim",
  lazy = false,
  opts = {
    set_dark_mode = function()
      vim.cmd("colorscheme tokyonight")
    end,
    set_light_mode = function()
      vim.cmd("colorscheme tokyonight-day")
    end,
  }
}

return M
