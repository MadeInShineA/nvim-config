return {
  "kiyoon/jupynium.nvim",
  ft = "jupy",
  config = function()
    if vim.fn.getenv("VIRTUAL_ENV") == vim.NIL then
      vim.notify("⚠️ Jupynium.nvim requires a virtual environment.", vim.log.levels.WARN)
      return
    end

    local plugin_path = vim.fn.stdpath("data") .. "/lazy/jupynium.nvim"
    local install_cmd = { "pip", "install", "." }

    vim.notify("✅ Virtual environment detected.\nInstalling Jupynium's Python package...", vim.log.levels.INFO)

    vim.system(install_cmd, {
      cwd = plugin_path,
      text = true,
    }, function(obj)
      if obj.code == 0 then
        vim.schedule(function()
          vim.notify("✅ Jupynium Python package installed successfully.", vim.log.levels.INFO)
        end)
      else
        vim.schedule(function()
          vim.notify("❌ Failed to install Jupynium package:\n" .. obj.stderr, vim.log.levels.ERROR)
        end)
      end
    end)

    require("jupynium").setup({
      use_default_keybindings = false,
    })

    local wk = require("which-key")
    wk.add({
      { "<leader>j", group = "jupyter" },
      { "<leader>jx", "<cmd>JupyniumExecuteSelectedCells<cr>", desc = "Execute selected cells", mode = "n" },
      { "<leader>jc", "<cmd>JupyniumClearSelectedCells<cr>", desc = "Clear selected cells" },
      { "<leader>jK", "<cmd>JupyniumToggleOutputScroll<cr>", desc = "Inspect variable" },
      { "<leader>jo", "<cmd>JupyniumInspectVariable<cr>", desc = "Toggle output scrolling" },
      { "<leader>js", "<cmd>JupyniumScrollToCell<cr>", desc = "Scroll to cell" },
      { "<leader>ja", "<cmd>JupyniumStartAndAttachToServer<cr>", desc = "Start and attach jupyter server" },
      {
        "<leader>jy",
        "<cmd>JupyniumStartSync " .. string.gsub(vim.fn.expand("%"), "%.ju%.py$", "") .. "<cr>",
        desc = "Start syncing the current file",
      },
    })
  end,
}
