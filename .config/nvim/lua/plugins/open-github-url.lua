return {
  "tetzng/open-github-url.nvim",
  event = "VimEnter",
  keys = {
    { "<leader>gh", "<cmd>OpenGitHubUrlUnderCursor<cr>", desc = "Open GitHub URL under cursor" },
  },
  config = true,
}
