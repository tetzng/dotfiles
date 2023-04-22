return {
  "jose-elias-alvarez/null-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    local b = null_ls.builtins

    local with_root_file = function(...)
      local files = { ... }
      return function(utils)
        return utils.root_has_file(files)
      end
    end

    local sources = {
      -- formatting
      b.formatting.fish_indent,
      b.formatting.markdownlint,
      b.formatting.cbfmt.with({
        condition = with_root_file(".cbfmt.toml"),
      }),
      b.formatting.stylua.with({
        condition = with_root_file(".stylua.toml"),
      }),
      b.formatting.black,
      b.formatting.isort,
      b.formatting.rubocop.with({
        condition = function(utils)
          return utils.root_has_file({ ".rubocop.yml" })
        end,
        -- command = "bundle",
        args = { "-A", "-f", "quiet", "--stderr", "--stdin", "$FILENAME" },
        -- vim.list_extend(
        -- 	{ "exec", "rubocop" },
      }),
      b.formatting.eslint.with({
        condition = function(utils)
          return utils.root_has_file({ ".eslintrc.js", ".eslintrc.json" })
        end,
        prefer_local = "node_modules/.bin",
        command = "eslint",
        args = vim.list_extend(
          { "--fix-to-stdout", "--stdin", "--stdin-filename", "$FILENAME" },
          null_ls.builtins.formatting.eslint._opts.args
        ),
      }),
      b.formatting.yamlfmt,
      b.formatting.gofmt,
      b.formatting.rustfmt,
      b.formatting.prettier.with({
        condition = function(utils)
          return utils.root_has_file({ ".prettierrc", "prettier.config.js" })
        end,
        prefer_local = "node_modules/.bin",
      }),

      -- diagnostics
      b.diagnostics.markdownlint,
      b.diagnostics.selene.with({
        condition = with_root_file("selene.toml"),
      }),
      b.diagnostics.flake8,
      b.diagnostics.rubocop.with({
        condition = function(utils)
          return utils.root_has_file({ ".rubocop.yml" })
        end,
        -- command = "bundle",
        -- args = vim.list_extend({ "exec", "rubocop" }, null_ls.builtins.diagnostics.rubocop._opts.args),
      }),
      b.diagnostics.eslint.with({
        condition = function(utils)
          return utils.root_has_file({ ".eslintrc.js", ".eslintrc.json" })
        end,
        prefer_local = "node_modules/.bin",
        command = "eslint",
        args = vim.list_extend(
          { "--stdin", "--stdin-filename", "$FILENAME" },
          null_ls.builtins.diagnostics.eslint._opts.args
        ),
      }),
      b.diagnostics.yamllint,
      b.diagnostics.fish.with({
        condition = function(utils)
          return utils.root_has_file({ ".config/fish/config.fish" })
        end,
      }),

      -- hover
      b.hover.dictionary,

      -- code actions
      b.code_actions.gitsigns,

      -- completion
      -- b.completion.spell,
    }

    local M = {}
    M.setup = function(on_attach)
      null_ls.setup({
        -- debug = true,
        sources = sources,
        on_attach = on_attach,
        root_dir = null_ls.util.root_pattern(".git", "package.json"),
      })
    end

    return M
  end,
}
