local M = {
  "simrat39/symbols-outline.nvim",
  commit = "512791925d57a61c545bc303356e8a8f7869763c",
  event = "VeryLazy",
}

function M.config()
  require("symbols-outline").setup {}
end

return M
