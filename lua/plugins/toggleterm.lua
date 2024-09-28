return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = true,
  keys = {
    { "<leader>th", "<cmd>ToggleTerm<cr>", desc = "Horizontal Terminal (cwd)" },
    { "<leader>tv", "<cmd>ToggleTerm direction=vertical<cr>", desc = "Vertivcal Terminal (cwd)" },
  },
}
