---@class LazyPluginSpec
local M = {
  "nvimdev/guard.nvim",
  dependencies = {
    "nvimdev/guard-collection",
  },
  -- ft = {
  --   "go", "python", "rust", "javascript", "typescript", "typescriptreact", "lua", "fish",
  -- },
  opts = {
    fmt_on_save = true,
    lsp_as_default_formatter = true,
  },
  config = function(_, opts)
    local ft = require("guard.filetype")

    ft("lua"):fmt("lsp")
    ft("rust")
        :fmt("rustfmt")
    ft("go")
        :fmt("gofmt")
    ft("javascript")
        :fmt("prettier")
    ft("typescript", "typescriptreact")
        :fmt("lsp")
        :append("prettier")
    ft("python")
        :fmt("isort")
        :lint("flake8")
    ft("fish")
        :fmt("fish_indent")

    require("guard").setup(opts)
  end,
}

return M
