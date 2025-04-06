vim.filetype.add({
  pattern = {
    [".*%.ju%.py$"] = "jupy", -- Your custom filetype
  },
})

-- Explicitly set the filetype for `.ju.py` files if they aren't detected correctly
vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
  pattern = "*.ju.py",
  callback = function()
    vim.opt.filetype = "jupy" -- Set to your custom filetype
    vim.cmd("setlocal syntax=python") -- Use Python syntax highlighting for jupy files
  end,
})
