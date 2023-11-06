return {
  "uga-rosa/translate.nvim",
  event = "BufReadPost",
  config = function(_, opts)
    require("translate").setup(opts)
    vim.keymap.set("n", "<leader>tl", "<cmd>:Translate JA<cr>", { silent = true, desc = "Translate to Japanese" })
    vim.keymap.set("v", "<leader>tl", "<cmd>:Translate JA<cr>", { silent = true, desc = "Translate to Japanese" })
  end,
}
