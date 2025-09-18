-- ~/.config/nvim/lua/plugins/kotlin-lsp.lua
return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      kotlin_language_server = {
        mason = false, -- we’re using JetBrains kotlin-lsp, not fwcd
        cmd = { "kotlin-lsp", "--stdio" }, -- or: "--lsp=stdio" if needed
      },
    },
  },
}
