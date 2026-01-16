return {
  "chrisgrieser/nvim-spider",
  keys = {
    { "w", function() require("spider").motion("w") end, mode = { "n", "o", "x" }, desc = "Spider-w" },
    { "e", function() require("spider").motion("e") end, mode = { "n", "o", "x" }, desc = "Spider-e" },
    { "b", function() require("spider").motion("b") end, mode = { "n", "o", "x" }, desc = "Spider-b" },
    { "ge", function() require("spider").motion("ge") end, mode = { "n", "o", "x" }, desc = "Spider-ge" },
  },
  init = function()
    -- NOTE: https://github.com/chrisgrieser/nvim-spider#notes-on-operator-pending-mode
    vim.keymap.set("n", "dw", "de", { remap = true, desc = "delete word" })
    vim.keymap.set("n", "cw", "ce", { remap = true, desc = "change word" })
  end,
  config = function()
    require("spider").setup({
      skipInsignificantPunctuation = false,
    })
  end,
}
