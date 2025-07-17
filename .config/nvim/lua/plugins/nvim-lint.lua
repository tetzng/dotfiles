---@class LazyPluginSpec
local M = {
  "mfussenegger/nvim-lint",
  event = "BufReadPre",
  config = function()
    local lint = require("lint")
    local rubocop = lint.linters.rubocop
    rubocop.cmd = "bundle"
    rubocop.args = { "exec", "rubocop", "--format", "json", "--force-exclusion" }
    lint.linters_by_ft = {
      bash = { "shellcheck" },
      go = { "golangcilint" },
      markdown = { "markdownlint", "cspell" },
      python = { "flake8", "cspell" },
      ruby = { "rubocop" },
      sh = { "shellcheck" },
      zsh = { "shellcheck" },
    }
    lint.try_lint()

    vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave", "TextChanged" }, {
      callback = function()
        require("lint").try_lint()
      end,
    })
  end,
}

return M
