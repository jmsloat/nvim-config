local M = {
  "aserowy/tmux.nvim",
  commit = "b6da35847df972f50df27d938b6e5ea09bcc8391",
  event = "VeryLazy",

}

function M.config()
  require("tmux").setup {
  }
end

return M

