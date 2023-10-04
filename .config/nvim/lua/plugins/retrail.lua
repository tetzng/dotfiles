---@class LazyPluginSpec
local M = {
  "kaplanz/retrail.nvim",
  event = "BufReadPost",
  opts = {
    trim = {
      auto = true,
      whitespace = true,
      blanklines = true,
    },
  },
}

return M
