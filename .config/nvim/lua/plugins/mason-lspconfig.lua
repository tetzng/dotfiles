---@class LazyPluginSpec
local M = {
  "mason-org/mason-lspconfig.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
    "folke/lazydev.nvim",
    -- "folke/neoconf.nvim",
    "b0o/schemastore.nvim",
    "saghen/blink.cmp",
  },
  ---@type MasonLspconfigSettings
  opts = {
    ensure_installed = {
      "copilot",
      "efm",
      "eslint",
      "gopls",
      "jsonls",
      "lua_ls",
      "stimulus_ls",
      "stylelint_lsp",
      "tailwindcss",
    },
    automatic_enable = true,
    automatic_installation = false,
  },
  config = function(_, opts)
    require("mason").setup()
    require("mason-lspconfig").setup(opts)

    vim.lsp.config("*", { capabilities = require("blink.cmp").get_lsp_capabilities() })
  end,
}

return M
