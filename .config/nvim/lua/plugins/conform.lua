---@class LazyPluginSpec
local M = {
  "stevearc/conform.nvim",
  event = "BufReadPost",
  opts = {
    formatters = {
      rubocop = {
        command = "bundle",
        prepend_args = { "exec", "rubocop" },
      },
    },
    formatters_by_ft = {
      fish = { "fish_indent" },
      ruby = { "rubocop" },
      go = { "goimports", "gofumpt" },
    },
    format_on_save = {
      timeout_ms = 3000,
      lsp_fallback = true,
    },
  },
}

return M
