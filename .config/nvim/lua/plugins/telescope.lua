return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.1",
  event = "VimEnter",
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  config = function()
    -- You dont need to set any of these options. These are the default ones. Only
    -- the loading is important
    require("telescope").setup({
      extensions = {
        fzf = {
          fuzzy = true,                   -- false will only do exact matching
          override_generic_sorter = true, -- override the generic sorter
          override_file_sorter = true,    -- override the file sorter
          case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
          -- the default case_mode is "smart_case"
        },
      },
    })
    -- To get fzf loaded and working with telescope, you need to call
    -- load_extension, somewhere after setup function:
    require("telescope").load_extension("fzf")

    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Find files by Telescope" })
    vim.keymap.set("n", "<leader>ff", builtin.live_grep, { desc = "Grep files by Telescope" })
    vim.keymap.set("n", "<leader>fg", builtin.git_files, { desc = "Grep git files by Telescope" })
    vim.keymap.set("c", "<C-o><C-p>", builtin.commands, { desc = "Find commands by Telescope" })
    vim.keymap.set("c", "<C-o><C-r>", builtin.command_history, { desc = "Find command history by Telescope" })
    vim.keymap.set("c", "<C-o><C-f>", builtin.search_history, { desc = "Find command history by Telescope" })
  end,
}
