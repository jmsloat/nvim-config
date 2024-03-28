local M = {
  "kelly-lin/ranger.nvim",
  lazy = true,
  event = "VimEnter",
}

function M.config()
  local ranger = require "ranger-nvim"
  ranger.setup {
    replace_netrw = true,
    ui = {
      border = "single",
      height = 0.8,
      width = 0.8,
    },
  }

  vim.keymap.set("n", "<leader>r", function()
    ranger.open(true)
  end)

  vim.keymap.set("n", "<leader>e", function()
    ranger.open(true)
  end)
end

return M
