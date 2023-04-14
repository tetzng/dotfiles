return {
  "akinsho/toggleterm.nvim",
  version = "*",
  event = "VimEnter",
  config = function()
    require("pluginconfig/toggleterm")
  end,
}
