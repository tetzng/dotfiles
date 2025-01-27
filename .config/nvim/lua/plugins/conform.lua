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
      -- lua = { "stylua" },
      python = { "isort", "black" },
      javascript = { "prettierd", "prettier" },
      -- rust = { "rustfmt" },
      fish = { "fish_indent" },
      markdown = { "markdown-toc" },
      ruby = { "rubocop" },
      toml = { "taplo" },
    },
    format_on_save = {
      timeout_ms = 3000,
      lsp_fallback = true,
    },
  },
}

return M
