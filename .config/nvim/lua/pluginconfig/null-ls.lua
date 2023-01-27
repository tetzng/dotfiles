local null_ls = require("null-ls")

-- diagnostic sources
local diagnostics = null_ls.builtins.diagnostics

-- formatting sources
local formatting = null_ls.builtins.formatting

-- completion sources
local completion = null_ls.builtins.completion

local sources = {
  formatting.stylua,
  formatting.prettier,
  diagnostics.rubocop.with({
    condition = function(utils)
      return utils.root_has_file({ ".rubocop.yml" })
    end,
    command = "bundle",
    args = vim.list_extend({ "exec", "rubocop" }, null_ls.builtins.formatting.rubocop._opts.args),
  }),
  formatting.rubocop.with({
    condition = function(utils)
      return utils.root_has_file({ ".rubocop.yml" })
    end,
    command = "bundle",
    args = vim.list_extend({ "exec", "rubocop" }, null_ls.builtins.formatting.rubocop._opts.args),
  }),
  diagnostics.eslint.with({
    prefer_local = "node_modules/.bin",
  }),
  diagnostics.luacheck.with({
    extra_args = { "--globals", "vim", "--globals", "awesome" },
  }),
  diagnostics.yamllint,
  formatting.gofmt,
  formatting.rustfmt,
  completion.spell,
}

null_ls.setup({ sources = sources })

