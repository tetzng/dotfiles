return {
  "folke/which-key.nvim",
  event = "VimEnter",
  config = function()
    require("pluginconfig/which-key")
  end,
}
