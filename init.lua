-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.cmd.colorscheme("catppuccin")
require("catppuccin").setup({
  transparent_background = true,
  term_colors = true,
  styles = {
    sidebars = "transparent",
    floats = "transparent",
  },
  integrations = {
    nvimtree = {
      transparent_panel = true,
    },
    -- add more integrations if needed
  },
})

vim.cmd.colorscheme("catppuccin")
