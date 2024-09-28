return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = true,
  on_open = function(term)
    vim.cmd("startinsert")
    term:send("clear", true)
  end,
  keys = {
    { "<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>", desc = "Horizontal Terminal (cwd)" },
    { "<leader>tv", "<cmd>ToggleTerm direction=vertical size=80<cr>", desc = "Vertical terminal (cwd)" },
  },
}
