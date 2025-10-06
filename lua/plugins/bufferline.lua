return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons", -- Optional, but recommended for icons
    },
    opts = {
      options = {
        -- General settings
        mode = "buffers", -- or "tabs"
        separator_style = "slant",
        always_show_bufferline = true,
        show_buffer_close_icons = true,
        show_close_icon = false,
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          local icon = level:match("error") and " " or " "
          return " " .. icon .. count
        end,

        -- Styling (Catppuccin handles colors, but you can customize)
        -- These are optional; Catppuccin integration usually covers this
        -- colored = true,
        -- color_icons = true,

        -- Buffer sorting
        sort_by = "id",
        enforce_regular_tabs = true,

        -- Close buffer on middle click
        middle_mouse_command = "bdelete %d",

        -- Right click menu
        right_mouse_command = "bdelete %d",

        -- Left click
        left_mouse_command = "buffer %d",

        -- Custom areas (optional)
        -- custom_areas = {
        --   right = function()
        --     return { " " .. vim.fn.getcwd() .. " " }
        --   end,
        -- },
      },
    },
    init = function()
      -- Optional: keymaps (you can also put these in keymaps.lua)
      -- vim.keymap.set("n", "<S-l>", ":BufferLineCycleNext<CR>", { silent = true })
      -- vim.keymap.set("n", "<S-h>", ":BufferLineCyclePrev<CR>", { silent = true })
    end,
  },
}
