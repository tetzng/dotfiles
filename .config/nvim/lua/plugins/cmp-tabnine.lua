return {
  "tzachar/cmp-tabnine",
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/nvim-cmp",
  },
  build = "./install.sh",
  config = function()
    require("cmp_tabnine.config"):setup({
      max_lines = 1000,
      max_num_results = 20,
      sort = true,
      run_on_every_keystroke = true,
      snippet_placeholder = "..",
      ignored_file_types = {
        -- default is not to ignore
        -- uncomment to ignore in lua:
        -- lua = true
      },
      show_prediction_strength = false,
    })
  end,
}
