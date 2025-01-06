return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      -- Add your other setup options here if needed
    })

    -- Map double Escape to exit terminal mode globally
    vim.keymap.set("t", "<Esc><Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })
  end,
  keys = {
    { "<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>", desc = "Horizontal Terminal (cwd)" },
    { "<leader>tv", "<cmd>ToggleTerm direction=vertical size=80<cr>", desc = "Vertical terminal (cwd)" },
    { "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", desc = "Vertical terminal (cwd)" },
  },
}
