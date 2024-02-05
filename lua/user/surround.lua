local M = {
  "kylechui/nvim-surround",
  event = "VeryLazy",
  version = "*",
}

function M.config()
  require('nvim-surround').setup({})
end

return M
