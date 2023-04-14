return {
  "delphinus/cellwidths.nvim",
  event = "BufEnter",
  config = function()
    require("cellwidths").setup({
      name = "cica",
    })
  end,
}
