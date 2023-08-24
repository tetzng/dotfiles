---@class LazyPluginSpec
local M = {
  "nvimdev/guard.nvim",
  event = { "BufReadPost", "BufNewFile" },
  ft = { "go", "python", "rust", "ruby", "javascript", "typescript", "lua" },
  opts = {
    fmt_on_save = false,
    lsp_as_default_formatter = true,
  },
  config = function(_, opts)
    local ft = require("guard.filetype")
    local lint = require("guard.lint")

    ft("rust")
      :fmt("rustfmt")
    ft("go")
      :fmt("gofmt")
    ft("typescript", "javascript", "typescriptreact")
      :fmt("prettier")
    ft("ruby")
      :fmt("rubocop")
      :lint("rubocop")
    ft("python")
      :fmt({
        cmd = "poetry",
        args = { "isort" },
        stdin = true,
      })
      :lint({
        cmd = "poetry",
        args = { "run", "--format", "default", "-", "--stdin-display-name" },
        stdin = true,
        fname = true,
        parse = lint.from_regex({
          source = "flake8",
          regex = ":(%d+):(%d+):%s(%a)(%w+) (.+)",
          severities = {
            E = lint.severities.error,
            W = lint.severities.warning,
            C = lint.severities.warning,
            F = lint.severities.info,
          },
        }),
      })

    require("guard").setup(opts)
  end,
}

return M
