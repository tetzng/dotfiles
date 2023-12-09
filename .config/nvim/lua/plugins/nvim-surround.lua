---@class LazyPluginSpec
local M = {
  "kylechui/nvim-surround",
  version = "*",
  event = "BufReadPre",
  config = true,
}

return M
