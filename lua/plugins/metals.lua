return {
  "scalameta/nvim-metals",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  keys = {
    {
      "<leader>cw",
      function()
        require("metals").hover_worksheet()
      end,
      desc = "Metals Worksheet",
    },
    {
      "<leader>cM",
      function()
        require("telescope").extensions.metals.commands()
      end,
      desc = "Telescope Metals Commands",
    },
  },
  ft = { "scala", "sbt", "java" },
  opts = function()
    local metals_config = require("metals").bare_config()
    metals_config.on_attach = function(client, bufnr)
      -- your on_attach function
    end

    return metals_config
  end,
  config = function(self, metals_config)
    local nvim_metals_group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })
    vim.api.nvim_create_autocmd("FileType", {
      pattern = self.ft,
      callback = function()
        require("metals").initialize_or_attach(metals_config)
      end,
      group = nvim_metals_group,
    })

    vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
      pattern = { "*.worksheet.sc" },
      callback = function()
        vim.lsp.inlay_hint.enable(true)
      end,
      group = nvim_metals_group,
    })
  end,
}
