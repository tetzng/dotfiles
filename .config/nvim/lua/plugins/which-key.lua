---@class LazyPluginSpec
local M = {
  "folke/which-key.nvim",
  event = "VimEnter",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = true,
}

return M
