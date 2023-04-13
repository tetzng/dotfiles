local null_ls = require("null-ls")

-- diagnostic sources
local diagnostics = null_ls.builtins.diagnostics

-- formatting sources
local formatting = null_ls.builtins.formatting

-- completion sources
local completion = null_ls.builtins.completion

local sources = {
    -- markdown
    -- diagnostics.markdownlint,
    -- formatting.markdownlint,

    -- lua
    formatting.stylua.with({
        condition = function()
          return vim.fn.executable("stylua") > 0
        end,
    }),
    -- diagnostics.selene.with({
    --     condition = function(utils)
    --       return vim.fn.executable("selene") > 0 and utils.root_has_file({ "selene.toml" })
    --     end,
    -- }),
    -- python
    -- diagnostics.flake8,
    -- formatting.black,
    -- formatting.isort,

    -- ruby
    diagnostics.rubocop.with({
        condition = function(utils)
          return utils.root_has_file({ ".rubocop.yml" })
        end,
        -- command = "bundle",
        -- args = vim.list_extend({ "exec", "rubocop" }, null_ls.builtins.diagnostics.rubocop._opts.args),
    }),
    formatting.rubocop.with({
        condition = function(utils)
          return utils.root_has_file({ ".rubocop.yml" })
        end,
        -- command = "bundle",
        args = { "-A", "-f", "quiet", "--stderr", "--stdin", "$FILENAME" },
        -- vim.list_extend(
        -- 	{ "exec", "rubocop" },
    }),

    diagnostics.eslint.with({
        condition = function(utils)
          return utils.root_has_file({ ".eslintrc.js" })
        end,
        command = "eslint",
        args = vim.list_extend(
            { "--stdin", "--stdin-filename", "$FILENAME" },
            null_ls.builtins.diagnostics.eslint._opts.args
        ),
    }),
    formatting.eslint.with({
        condition = function(utils)
          return utils.root_has_file({ ".eslintrc.js" })
        end,
        command = "eslint",
        args = vim.list_extend(
            { "--fix-to-stdout", "--stdin", "--stdin-filename", "$FILENAME" },
            null_ls.builtins.formatting.eslint._opts.args
        ),
    }),

    -- yaml
    diagnostics.yamllint,
    formatting.yamlfmt,

    -- go
    formatting.gofmt,

    -- rust
    formatting.rustfmt,

    -- spell
    completion.spell,
    -- fish
    diagnostics.fish.with({
        condition = function(utils)
          return utils.root_has_file({ ".config/fish/config.fish" })
        end,
    }),
    -- prettier
    formatting.prettier.with({
        condition = function(utils)
          return utils.root_has_file({ ".prettierrc" })
        end,
        -- prefer_local = "node_modules/.bin",
    }),
}

null_ls.setup({
    debug = false,
    sources = sources,
})
