return {
  "j-hui/fidget.nvim",
  event = "VimEnter",
  config = function()
    require("pluginconfig/fidget")
  end,
}
