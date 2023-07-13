local M = {
  "ray-x/lsp_signature.nvim",
  commit = "17ff7a405fea8376b015b8ea7910d2e59958bf68",
  event = "LspAttach",
}

function M.config()
  require('lsp_signature').setup{}
end

return M
