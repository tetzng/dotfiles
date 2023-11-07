return {
  "norcalli/nvim-colorizer.lua",
  ft = { "css", "html", "typescriptreact" },
  config = function()
    require("colorizer").setup()
  end,
}
