return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  event = "VimEnter",
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    { "nvim-telescope/telescope-frecency.nvim" },
    { "nvim-telescope/telescope-dap.nvim" },
    { "nvim-telescope/telescope.nvim" },
  },
  config = function()
    local actions = require("telescope.actions")
    local action_layout = require("telescope.actions.layout")

    require("telescope").setup({
      defaults = {
        mappings = {
          i = {
            ["<esc>"] = actions.close,
            ["<C-u>"] = false, -- default: actions.preview_scrolling_up
            ["<C-d>"] = false, -- default: actions.preview_scrolling_down
            ["<M-p>"] = action_layout.toggle_preview,
            ["<C-n>"] = actions.move_selection_next,
            ["<C-p>"] = actions.move_selection_previous,
            ["<C-c>"] = actions.close,

            ["<Down>"] = actions.move_selection_next,
            ["<Up>"] = actions.move_selection_previous,

            ["<CR>"] = actions.select_default,
            ["<C-x>"] = false, --default: actions.select_horizontal
            ["<C-s>"] = actions.select_horizontal,
            ["<C-v>"] = actions.select_vertical,
            ["<C-t>"] = actions.select_tab,

            ["<PageUp>"] = actions.results_scrolling_up,
            ["<PageDown>"] = actions.results_scrolling_down,

            ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
            ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
            ["<C-q>"] = false, -- default: actions.send_to_qflist + actions.open_qflist
            ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
            ["<C-l>"] = actions.complete_tag,
            ["<C-/>"] = false, --default: actions.which_key
            ["<C-_>"] = false, --default: actions.which_key
            ["<M-/>"] = actions.which_key,
            ["<C-w>"] = { "<c-s-w>", type = "command" },
            ["<C-j>"] = actions.nop,
          },
        },
      },
      extensions = {
        fzf = {
          fuzzy = true,                   -- false will only do exact matching
          override_generic_sorter = true, -- override the generic sorter
          override_file_sorter = true,    -- override the file sorter
          case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
          -- the default case_mode is "smart_case"
        },
      },
      pickers = {
        colorscheme = {
          enable_preview = true
        }
      }
    })

    require("telescope").load_extension("fzf")
    require("telescope").load_extension("frecency")
    require("telescope").load_extension("cica_icons")

    local builtin = require("telescope.builtin")

    vim.keymap.set("n", "<leader>cp", builtin.colorscheme, { desc = "Find available colorschemes Telescope" })
    vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Find files by Telescope" })
    vim.keymap.set("n", "<leader>ff", builtin.live_grep, { desc = "Grep files by Telescope" })
    vim.keymap.set("n", "<leader>fg", builtin.git_files, { desc = "Grep git files by Telescope" })
    vim.keymap.set("n", "<leader>fc", "<cmd>Telescope cica_icons<cr>", { desc = "Find cica icons" })
    vim.keymap.set("n", "<leader>f?", "<cmd>Telescope keymaps<cr>", { desc = "Find keymaps" })
    vim.keymap.set("n", "<leader>fr",
      "<cmd>lua require('telescope').extensions.frecency.frecency({ workspace = 'CWD' })<cr>",
      { silent = true, desc = "Find file from history" })

    vim.keymap.set("c", "<C-o><C-f>", builtin.search_history, { desc = "Find command history by Telescope" })
    vim.keymap.set("c", "<C-o><C-p>", builtin.commands, { desc = "Find commands by Telescope" })
    vim.keymap.set("c", "<C-o><C-r>", builtin.command_history, { desc = "Find command history by Telescope" })
  end,
}
