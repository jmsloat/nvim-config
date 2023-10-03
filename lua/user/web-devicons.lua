local M = {
  "nvim-tree/nvim-web-devicons",
  commit = "45d0237c427baba8cd05e0ab26d30e2ee58c2c82",
}

function M.config()
  require("nvim-web-devicons").setup{}
end

return M
