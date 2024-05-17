---@class LazyPluginSpec
local M = {
  "CopilotC-Nvim/CopilotChat.nvim",
  branch = "canary",
  event = "BufReadPre",
  dependencies = {
    { "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
    { "nvim-lua/plenary.nvim" },  -- for curl, log wrapper
  },
  opts = {
    debug = true, -- Enable debugging
    -- See Configuration section for rest
    prompts = {
      Explain = {
        prompt = '/COPILOT_EXPLAIN Write an explanation for the code above as paragraphs of text. 日本語で回答してください。',
      },
    },
  },
  -- See Commands section for default commands if you want to lazy load on them
}

return M
