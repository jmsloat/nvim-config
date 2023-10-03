if os.getenv("CORP") then
local M = {
  dir = "/google/src/head/depot/google3/experimental/buganizer.nvim",
  dependencies = {
    {
      url = 'sso://user/vicentecaycedo/cmp-buganizer',
    }
  },
}
function M.config()
    -- require('cmp-buganizer').setup{}
    -- require('buganizer.nvim').setup{}
end

return M
end
