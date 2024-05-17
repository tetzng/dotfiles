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
      -- lua = { 'selene', },
      sh = { "shellcheck" },
      bash = { "shellcheck" },
      zsh = { "shellcheck" },
      markdown = { "markdownlint", "cspell" },
      -- javascript = { 'eslint_d' },
      -- typescript = { 'eslint_d' },
      -- rust = { "clippy" },
      python = { "flake8", "cspell" },
      ruby = { "rubocop" },
    }
    lint.try_lint()

    vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave", "TextChanged" }, {
      callback = function()
        require("lint").try_lint()
        -- if vim.fn.filereadable(".vale.ini") > 0 then
        --   require("lint").try_lint({ "vale" })
        -- end
      end,
    })
  end,
}

return M
