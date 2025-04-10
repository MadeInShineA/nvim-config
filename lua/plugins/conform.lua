return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      rust = { "dioxus_fmt" },
    },
    format_on_save = {
      lsp_fallback = true,
      timeout_ms = 1000,
    },
    formatters = {
      dioxus_fmt = {
        command = "dx",
        args = { "fmt", "--file", "$FILENAME" },
        stdin = false,
        condition = function(ctx)
          -- Start search from the directory of the file
          local dir = vim.fs.dirname(ctx.filename)
          -- Look for Dioxus.toml upward from there
          local root = vim.fs.find("Dioxus.toml", { upward = true, path = dir })[1]
          return root ~= nil
        end,
      },
    },
  },
}
