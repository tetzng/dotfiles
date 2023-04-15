return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    "f3fora/cmp-spell",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-calc",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/cmp-emoji",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-nvim-lsp-document-symbol",
    -- { "hrsh7th/cmp-nvim-lsp-signature-help",
    "hrsh7th/cmp-nvim-lua",
    "hrsh7th/cmp-path",
    "onsails/lspkind-nvim",
    "petertriho/cmp-git",
    "ray-x/cmp-treesitter",
    "saadparwaiz1/cmp_luasnip",
    "uga-rosa/cmp-dictionary",
    "yutkat/cmp-mocword",
    "zbirenbaum/copilot-cmp",
    "tzachar/cmp-tabnine",
  },
  config = function()
    local cmp = require("cmp")
    local lspkind = require("lspkind")
    cmp.setup({
      snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-u>"] = cmp.mapping.scroll_docs(-4),
        ["<C-d>"] = cmp.mapping.scroll_docs(4),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        -- ['<C-m>'] = cmp.mapping.complete(),
        -- ["<CR>"] = cmp.mapping({
        --     i = function(fallback)
        --       if cmp.visible() and cmp.get_active_entry() then
        --         cmp.confirm({ select = true })
        --       else
        --         fallback()
        --       end
        --     end,
        --     s = cmp.mapping.confirm({ select = true }),
        --     c = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
        -- }),
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
            Text = "󿞃",
            Method = "󿚦",
            Function = "󿞔",
            Constructor = "",
            Field = "󿰠",
            Variable = "󿔪",
            Class = "",
            Interface = "",
            Module = "",
            Property = "󿰠",
            Unit = "󿥬",
            Value = "󿢟",
            Enum = "",
            Keyword = "󿠊",
            Snippet = "",
            Color = "󿣗",
            File = "󿜘",
            Reference = "󿜆",
            Folder = "󿝊",
            EnumMember = "",
            Constant = "󿣾",
            Struct = "󿭄",
            Event = "",
            Operator = "󿚔",
            TypeParameter = "",
          },
          maxwidth = 50,
          ellipsis_char = "...",
        }),
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
        { name = 'cmp_tabnine' },
      }),
    })
  end,
}
