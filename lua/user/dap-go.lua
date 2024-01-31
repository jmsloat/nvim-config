local M = {
  "leoluz/nvim-dap-go",
  event = "VeryLazy",
}

function M.config()
  local dapgo = require "dap-go"
  dapgo.setup{}
end

return M
