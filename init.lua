-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
function SetGlobalAutoformat(bool_val)
  vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
    callback = function()
      vim.b.autoformat = bool_val
    end,
  })
end

function SetLanguageAutoFormat(language, bool_val)
  vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = language,
    callback = function()
      vim.b.autoformat = bool_val
    end,
  })
end

local local_config = vim.fn.getcwd() .. "/.nvim.lua"
if vim.fn.filereadable(local_config) == 1 then
  dofile(local_config)
end
