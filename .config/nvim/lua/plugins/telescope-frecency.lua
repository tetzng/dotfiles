return {
  "nvim-telescope/telescope-frecency.nvim",
  event = "VimEnter",
  config = function()
    require("telescope").load_extension("frecency")
  end,
  dependencies = { "kkharji/sqlite.lua" },
}
