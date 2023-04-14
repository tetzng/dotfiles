return {
  "akinsho/toggleterm.nvim",
  version = "*",
  event = "VimEnter",
  config = function()
    local Terminal = require("toggleterm.terminal").Terminal
    local lazygit = Terminal:new({
      cmd = "lazygit",
      dir = "git_dir",
      direction = "float",
      float_opts = {
        border = "double",
      },
      auto_scroll = false,
      hiddent = true,
      -- -- function to run on opening the terminal
      -- on_open = function(term)
      --   vim.cmd("startinsert!")
      --   vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
      -- end,
      -- -- function to run on closing the terminal
      -- on_close = function(_)
      --   vim.cmd("startinsert!")
      -- end,
    })

    function LazygitToggle()
      lazygit:toggle()
    end

    vim.keymap.set(
      "n",
      "<leader>lg",
      "<cmd>lua LazygitToggle()<CR>",
      { silent = true, desc = "Show Lazygit on float window" }
    )
  end,
}
