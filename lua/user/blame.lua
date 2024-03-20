local M = {
  "FabijanZulj/blame.nvim",
  commit = "562661972085a273914c8f702b11924f8aa573ea",
  event = "BufReadPre",
}

function M.config()
  local keymap = vim.keymap.set
  keymap("n", "<leader>gb", ":ToggleBlame<CR>", {})
end

  return M
