---@class LazyPluginSpec
local M = {
  "williamboman/mason-lspconfig.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
    "folke/neodev.nvim",
    "folke/neoconf.nvim",
    "b0o/schemastore.nvim",
  },
  ---@type MasonLspconfigSettings
  opts = {
    ensure_installed = {
      "efm",
      "eslint",
      "gopls",
      "lua_ls",
      "rust_analyzer",
      "stylelint_lsp",
      "tailwindcss",
      "tsserver",
    },
    automatic_installation = false,
  },
  config = function(_, opts)
    require("mason-lspconfig").setup(opts)

    -- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    local lspconfig = require("lspconfig")
    require("mason-lspconfig").setup_handlers({
      function(server_name)
        lspconfig[server_name].setup({
          capabilities = capabilities,
        })
      end,

      ["lua_ls"] = function()
        lspconfig.lua_ls.setup({
          capabilities = capabilities,
          settings = {
            Lua = {
              runtime = {
                version = "LuaJIT",
              },
              format = {
                enable = true,
                defaultConfig = {
                  indent_style = "space",
                  indent_size = "2",
                  quote_style = "double",
                  continuation_indent = "2",
                  max_line_length = "120",
                },
              },
              diagnostics = {
                globals = { "vim" },
                unusedLocalExclude = { "_*" },
              },
              completion = {
                callSnippet = "Replace",
              }
            },
          },
        })
      end,

      ["rubocop"] = function()
        lspconfig.rubocop.setup({
          capabilities = capabilities,
        })
      end,

      ["stylelint_lsp"] = function()
        lspconfig.stylelint_lsp.setup({
          capabilities = capabilities,
          filetypes = {
            "css",
            -- 'less',
            -- 'scss',
            -- 'sugarss',
            -- 'vue',
            -- 'wxss',
            -- 'javascript',
            -- 'javascriptreact',
            -- 'typescript',
            -- 'typescriptreact',
          },
        })
      end,

      ["jsonls"] = function()
        lspconfig.jsonls.setup {
          capabilities = capabilities,
          filetypes = { "json", "jsonc", "json5" },
          settings = {
            json = {
              schemas = require("schemastore").json.schemas(),
            },
          },
        }
      end,

      ["yamlls"] = function()
        lspconfig.yamlls.setup {
          capabilities = capabilities,
          settings = {
            yaml = {
              hover = true,
              completion = true,
              validate = true,
              schemas = require("schemastore").yaml.schemas {
                extra = {
                  {
                    fileMatch = { "**/packages/*/package.yaml" },
                    name = "Mason Registry",
                    description = "Mason Registry",
                    url = "https://raw.githubusercontent.com/mason-org/json-schema/main/bundled-schema.json",
                  },
                },
              },
            },
          },
        }
      end,
    })
  end,
}

return M
