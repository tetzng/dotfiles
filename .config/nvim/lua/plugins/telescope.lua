---@class LazyPluginSpec
local M = {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  cmd = "Telescope",
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },
  },
  keys = {
    { "<leader>cp", function() require("telescope.builtin").colorscheme() end, desc = "Find colorschemes" },
    { "<C-p>", function() require("telescope.builtin").find_files() end, desc = "Find files by Telescope" },
    { "<leader>ff", function() require("telescope.builtin").live_grep() end, desc = "Grep files by Telescope" },
    { "<leader>fg", function() require("telescope.builtin").git_files() end, desc = "Grep git files by Telescope" },
    { "<leader>f?", function() require("telescope.builtin").keymaps() end, desc = "Find keymaps" },
    { "<C-o><C-f>", function() require("telescope.builtin").search_history() end, mode = "c", desc = "Find command history" },
    { "<C-o><C-p>", function() require("telescope.builtin").commands() end, mode = "c", desc = "Find commands" },
    { "<C-o><C-r>", function() require("telescope.builtin").command_history() end, mode = "c", desc = "Find command history" },
  },
  config = function()
    local actions = require("telescope.actions")
    local action_layout = require("telescope.actions.layout")

    require("telescope").setup({
      defaults = {
        -- sorting_strategy = "ascending",
        -- layout_config = {
        --   horizontal = {
        --     anchor = "N",
        --     height = 20,
        --     preview_cutoff = 120,
        --     prompt_position = "top",
        --     width = 140,
        --   },
        -- },
        dynamic_preview_title = true,
        results_title = "",
        prompt_title = "",
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
      pickers = {
        find_files = {
          find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
          hidden = true,
        },
        colorscheme = {
          enable_preview = true,
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
    })

    require("telescope").load_extension("fzf")
  end,
}

return M
