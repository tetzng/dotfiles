return {
  "tetzng/telescope-cica-icons.nvim",
  event = "VimEnter",
  config = function()
    require("telescope").load_extension("cica_icons")
  end,
  dependencies = {
    "nvim-telescope/telescope.nvim",
  },
}
