return {
  "nvimdev/lspsaga.nvim",
  event = "VimEnter",
  config = function()
    require("lspsaga").setup()
  end,
}
