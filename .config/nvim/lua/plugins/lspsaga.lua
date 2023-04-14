return {
  "nvimdev/lspsaga.nvim",
  event = "VimEnter",
  config = function()
    require("pluginconfig/lspsaga")
  end,
}
