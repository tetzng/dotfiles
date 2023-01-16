local null_ls = require("null-ls")
null_ls.setup({
  sources = {
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.diagnostics.rubocop.with({
      prefer_local = "bundle_bin",
      condition = function(utils)
        return utils.root_has_file({ ".rubocop.yml" })
      end
    }),
    -- null_ls.builtins.diagnostics.eslint,
    null_ls.builtins.diagnostics.luacheck.with({
      extra_args = { "--globals", "vim", "--globals", "awesome" },
    }),
    null_ls.builtins.diagnostics.yamllint,
    null_ls.builtins.formatting.gofmt,
    null_ls.builtins.formatting.rustfmt,
    null_ls.builtins.formatting.rubocop.with({
      prefer_local = "bundle_bin",
      condition = function(utils)
        return utils.root_has_file({ ".rubocop.yml" })
      end
    }),
    null_ls.builtins.completion.spell,
  },
})

