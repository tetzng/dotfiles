---@class LazyPluginSpec
local M = {
  "williamboman/mason.nvim",
  event = { "BufReadPre", "BufNewFile" },
  build = ":MasonUpdate",
  --@class MasonSettings
  opts = {
    ui = {
      border = "rounded",
      icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗",
      },
      keymaps = {
        toggle_help = "?",
      },
    },
  },
}

return M
