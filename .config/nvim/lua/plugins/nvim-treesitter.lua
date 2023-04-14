return {
  "nvim-treesitter/nvim-treesitter",
  event = "VimEnter",
  build = ":TSUpdate",
  highlight = {
    enable = true,
  },
}
