---@class LazyPluginSpec
local M = {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,

  ---@type snacks.Config
  opts = {
    bigfile = { enabled = true },
    dashboard = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    picker = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = false },
    statuscolumn = { enabled = false },
    words = { enabled = true },
  },
  init = function()
    local function hide_eob()
      if vim.g.snacks_dashboard_fillchars == nil then
        vim.g.snacks_dashboard_fillchars = vim.o.fillchars
      end
      local fillchars = vim.opt.fillchars:get()
      fillchars.eob = " "
      vim.opt.fillchars = fillchars
    end

    local function restore_eob()
      local saved = vim.g.snacks_dashboard_fillchars
      if saved ~= nil then
        vim.o.fillchars = saved
        vim.g.snacks_dashboard_fillchars = nil
      end
    end

    vim.api.nvim_create_autocmd("User", {
      pattern = "SnacksDashboardOpened",
      callback = hide_eob,
    })

    vim.api.nvim_create_autocmd("User", {
      pattern = "SnacksDashboardClosed",
      callback = restore_eob,
    })
  end,
}

return M
