return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    { "f3fora/cmp-spell" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-calc", },
    { "hrsh7th/cmp-cmdline" },
    { "hrsh7th/cmp-emoji" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-nvim-lsp-document-symbol" },
    -- { "hrsh7th/cmp-nvim-lsp-signature-help" },
    { "hrsh7th/cmp-nvim-lua" },
    { "hrsh7th/cmp-path" },
    { "onsails/lspkind-nvim" },
    { "petertriho/cmp-git" },
    { "ray-x/cmp-treesitter" },
    { "saadparwaiz1/cmp_luasnip" },
    { "uga-rosa/cmp-dictionary" },
    { "yutkat/cmp-mocword" },
    { "zbirenbaum/copilot-cmp" },
    {
      "tzachar/cmp-tabnine",
      build = "./install.sh",
      config = function()
        require("cmp_tabnine.config").setup({
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
  },
  config = function()
    require("pluginconfig/nvim-cmp")
  end,
}
