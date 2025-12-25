return {
  "brianhuster/live-preview.nvim",
  dependencies = {
    -- You can choose one of the following pickers
    "ibhagwan/fzf-lua",
  },
  keys = {
    { "<leader>lps", "<cmd>LivePreview start<cr>", desc = "Start live preview" },
    { "<leader>lpc", "<cmd>LivePreview close<cr>", desc = "Close live preview" },
  },
}
