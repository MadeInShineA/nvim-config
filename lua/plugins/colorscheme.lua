return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        transparent_background = true,
        term_colors = true,
        styles = {
          sidebars = "transparent",
          floats = "transparent",
        },
        integrations = {
          bufferline = true,
          nvimtree = {
            transparent_panel = true,
          },
        },
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
