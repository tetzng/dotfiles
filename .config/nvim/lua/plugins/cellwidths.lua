return {
  "delphinus/cellwidths.nvim",
  event = "BufEnter",
  opts = {
    name = "user/cica",
    fallback = function(cw)
      cw.load "cica"
      -- cw.add { { 0x2103, 2 }, {} }
      -- cw.delete { 0x2104 }
    end,
  },
  build = ":CellWidthsRemove",
}
