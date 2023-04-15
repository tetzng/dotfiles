local function close_neo_tree()
  require('neo-tree.sources.manager').close_all()
  vim.notify('closed all')
end

local function open_neo_tree()
  vim.notify('opening neotree')
  require('neo-tree.sources.manager').show('filesystem')
end

return {
  "rmagatti/auto-session",
  event = "VimEnter",
  dependencies = {
    "nvim-neo-tree/neo-tree.nvim",
  },
  opts = {
    auto_session_create_enabled = false,
    auto_save_enabled = true,
    auto_restore_enabled = true,
    auto_session_use_git_branch = true,
    bypass_session_save_file_types = { "neo-tree" },
    cwd_change_handling = {
      -- table: Config for handling the DirChangePre and DirChanged autocmds, can be set to nil to disable altogether
      restore_upcoming_session = true, -- boolean: restore session for upcoming cwd on cwd change
      pre_cwd_changed_hook = nil,      -- function: This is called after auto_session code runs for the `DirChangedPre` autocmd
      post_cwd_changed_hook = nil,     -- function: This is called after auto_session code runs for the `DirChanged` autocmd
    },
    pre_save_cmds = {
      close_neo_tree,
    },
    post_restore_cmds = {
      open_neo_tree,
    },
  },
}
