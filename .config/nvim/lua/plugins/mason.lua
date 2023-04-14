return {
  "williamboman/mason.nvim",
  event = { "BufReadPre", "BufNewFile" },
  build = ":MasonUpdate",
  config = function()
    require("pluginconfig/mason")
  end,
}
