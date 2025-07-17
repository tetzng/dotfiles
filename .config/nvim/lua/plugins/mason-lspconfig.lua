---@class LazyPluginSpec
local M = {
  "williamboman/mason-lspconfig.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
    "folke/lazydev.nvim",
    "folke/neoconf.nvim",
    "b0o/schemastore.nvim",
    "hrsh7th/nvim-cmp",
  },
  ---@type MasonLspconfigSettings
  opts = {
    ensure_installed = {
      "efm",
      "eslint",
      "gopls",
      "jsonls",
      "lua_ls",
      "stimulus_ls",
      "stylelint_lsp",
      "tailwindcss",
    },
    automatic_installation = false,
  },
  config = function(_, opts)
    require("mason").setup()
    require("mason-lspconfig").setup(opts)

    vim.lsp.config('*', { capabilities = require('cmp_nvim_lsp').default_capabilities(), })
  end,
}

return M
