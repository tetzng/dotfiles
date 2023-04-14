return {
  "folke/noice.nvim",
  event = "VimEnter",
  config = function()
    require("pluginconfig/noice")
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
}
