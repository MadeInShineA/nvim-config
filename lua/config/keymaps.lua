-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Open current file with xdg-open
vim.keymap.set("n", "<leader>of", function()
  local filepath = vim.fn.expand("%:p")
  if filepath == "" then
    print("No file to open")
    return
  end
  vim.fn.jobstart({ "xdg-open", filepath })
end, { desc = "Open current file with xdg-open" })
