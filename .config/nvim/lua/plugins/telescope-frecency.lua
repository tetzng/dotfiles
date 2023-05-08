return {
  "nvim-telescope/telescope-frecency.nvim",
  event = "VimEnter",
  config = function()
    require("telescope").load_extension("frecency")
  end,
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "kkharji/sqlite.lua",
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    { "<leader>fr", "<cmd>lua require('telescope').extensions.frecency.frecency({ workspace = 'CWD' })<cr>",
      noremap = true, silent = true, desc = "Find file from history" },
  },
}
