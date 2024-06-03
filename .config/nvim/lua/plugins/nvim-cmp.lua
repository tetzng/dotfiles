---@class LazyPluginSpec
local M = {
  "hrsh7th/nvim-cmp",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "f3fora/cmp-spell",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-calc",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/cmp-emoji",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-nvim-lsp-document-symbol",
    "hrsh7th/cmp-nvim-lsp-signature-help",
    "hrsh7th/cmp-nvim-lua",
    "hrsh7th/cmp-path",
    "onsails/lspkind-nvim",
    "petertriho/cmp-git",
    "ray-x/cmp-treesitter",
    "saadparwaiz1/cmp_luasnip",
    {
      "tzachar/cmp-tabnine",
      build = "./install.sh",
      config = function()
        require("cmp_tabnine.config"):setup({
          max_lines = 1000,
          max_num_results = 20,
          sort = true,
          run_on_every_keystroke = true,
          snippet_placeholder = "..",
          ignored_file_types = {
            -- default is not to ignore
            -- uncomment to ignore in lua:
            -- lua = true
          },
          show_prediction_strength = false,
        })
      end,
    },
    "uga-rosa/cmp-dictionary",
    "yutkat/cmp-mocword",
    {
      "zbirenbaum/copilot-cmp",
      dependencies = {
        "copilot.lua",
      },
      config = function()
        require("copilot_cmp").setup()
      end,
    },
  },
  config = function()
    local lspkind = require("lspkind")
    local cmp = require("cmp")
    local has_words_before = function()
      if vim.api.nvim_get_option_value("buftype", { buf = 0 }) == "prompt" then return false end
      local line, col = unpack(vim.api.nvim_win_get_cursor(0))
      return col ~= 0 and vim.api.nvim_buf_get_text(0, line - 1, 0, line - 1, col, {})[1]:match("^%s*$") == nil
    end

    ---@class cmp.ConfigSchema
    opts = {
      snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-u>"] = cmp.mapping.scroll_docs(-4),
        ["<C-d>"] = cmp.mapping.scroll_docs(4),
        ["<CR>"] = cmp.mapping.confirm(),
        ["<Tab>"] = vim.schedule_wrap(function(fallback)
          if cmp.visible() and has_words_before() then
            cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
          else
            fallback()
          end
        end),
      }),
      window = {
        -- completion = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),
      },
      formatting = {
        fields = { "abbr", "kind", "menu" },
        format = lspkind.cmp_format({
          mode = "symbol_text",
          symbol_map = {
            Text = "󰉿",
            Method = "󰆧",
            Function = "󰊕",
            Constructor = "",
            Field = "󰜢",
            Variable = "󰀫",
            Class = "󰠱",
            Interface = "",
            Module = "",
            Property = "󰜢",
            Unit = "󰑭",
            Value = "󰎠",
            Enum = "",
            Keyword = "󰌋",
            Snippet = "",
            Color = "󰏘",
            File = "󰈙",
            Reference = "󰈇",
            Folder = "󰉋",
            EnumMember = "",
            Constant = "󰏿",
            Struct = "󰙅",
            Event = "",
            Operator = "󰆕",
            TypeParameter = "",
            Copilot = "",
          },
          maxwidth = 50,
          ellipsis_char = "...",
        }),
        expandable_indicator = true,
      },
      sources = cmp.config.sources({
        { name = "copilot" },
        { name = "nvim_lsp" },
        { name = "path" },
        { name = "buffer" },
        { name = "nvim_lua" },
        { name = "luasnip" },
        { name = "cmdline" },
        { name = "git" },
        { name = "cmp_tabnine" },
        { name = "spell" },
        { name = "nvim_lsp_signature_help" },
      }),
    }
    cmp.setup(opts)
  end,
}

return M
