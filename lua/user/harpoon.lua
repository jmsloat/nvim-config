local M = {
   "ThePrimeagen/harpoon",
    commit = "2cd4e03372f7ee5692c8caa220f479ea07970f17",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "Bufenter",
}

function M.config()
  local harpoon = require('harpoon')

  harpoon:setup()
  vim.keymap.set("n", "<leader>jj", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
  vim.keymap.set("n", "<leader>ja", function() harpoon:list():append() end)

end

return M
