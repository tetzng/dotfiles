---@class LazyPluginSpec
local M = {
  "williamboman/mason.nvim",
  cmd = "Mason",
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
      ensure_installed = {
        "golangci-lint",
      },
    },
  },
}

return M
