---@class LazyPluginSpec
local M = {
  "nvimdev/guard.nvim",
  dependencies = {
    "nvimdev/guard-collection",
  },
  event = { "BufReadPre", "BufNewFile" },
  ft = {
    "go", "python", "rust", "javascript", "typescript", "typescriptreact", "lua",
  },
  opts = {
    fmt_on_save = false,
    lsp_as_default_formatter = true,
  },
  config = function(_, opts)
    local ft = require("guard.filetype")

    ft("lua"):fmt("lsp")
      -- :append("stylua")
    ft("rust")
      :fmt("rustfmt")
    ft("go")
      :fmt("gofmt")
    ft("typescript", "javascript", "typescriptreact")
      :fmt("lsp")
      :append("prettier")
    ft("python")
      :fmt("isort")
      :lint("flake8")

    require("guard").setup(opts)
  end,
}

return M
