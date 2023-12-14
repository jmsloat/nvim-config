
local M = {
  "chentoast/marks.nvim",
  commit = "76aca5069c5ce5c0099e30168649e6393e494f26",
  event = { "VimEnter" },
}

function M.config()
  require('marks').setup{}
end

return M
