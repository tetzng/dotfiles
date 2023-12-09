return {
  "nvim-telescope/telescope-frecency.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("telescope").load_extension("frecency")
  end,
  keys = {
    {
      "<leader>fr",
      "<cmd>lua require('telescope').extensions.frecency.frecency({ workspace = 'CWD' })<cr>",
      silent = true,
      desc = "Find file from history",
    }
  },
}
