local M = {
  "stevearc/aerial.nvim",
  commit = "fb1f08c9f90e8b0c04b2f2c5d95d06288a14c5b2",
  event = "LspAttach",
}

function M.config()
  require("aerial").setup{}
end

return M
