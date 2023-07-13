
local M = {
  "j-hui/fidget.nvim",
  commit = "f1c375ba68839eaa4a65efdf2aa078c0da0548fe",
  event = "LspAttach",
}

function M.config()
  require('fidget').setup{}
end

return M
