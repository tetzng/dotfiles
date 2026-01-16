---@type string
local content = [[
---@class LazyPluginSpec
local M = {
  "",
}

return M
]]

---@class LazyPluginSpec
local M = {
  "tetzng/add-plugin.nvim",
  cmd = "AddPlugin",
  ---@type AddPlugin.UserConfig
  opts = {
    content = content,
    open_on_create = true,
  },
}

return M
