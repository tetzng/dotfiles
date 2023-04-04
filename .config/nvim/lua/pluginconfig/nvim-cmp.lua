local cmp = require('cmp')
local lspkind = require('lspkind')
cmp.setup {
    snippet = {
        expand = function(args)
          require 'luasnip'.lsp_expand(args.body)
        end
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-u>'] = cmp.mapping.scroll_docs( -4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
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
        fields = { 'abbr', 'kind', 'menu' },
        format = lspkind.cmp_format({
            mode = 'symbol_text',
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
                TypeParameter = ""
            },
        }),
    },
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'nvim_lsp_signature_help' },
        { name = 'path' },
        { name = 'buffer' },
        { name = 'nvim_lua' },
        { name = 'luasnip' },
        { name = 'cmdline' },
        { name = 'git' },
    }),
}
