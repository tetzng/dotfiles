return {
  "williamboman/mason-lspconfig.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "tsserver",
        "eslint",
        "lua_ls",
        "gopls",
        -- "ruby_ls",
        -- "graphql",
        "tailwindcss",
        "rust_analyzer",
      },
      automatic_installation = true,
    })

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
            },
          },
        })
      end,
    })
  end,
}
