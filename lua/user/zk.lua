local M = {
 "mickael-menu/zk-nvim",
  event = "BufReadPre",
}

function M.config()
  require("zk").setup{
    lsp = {
      config = {
        cmd = { "zk", "lsp" },
        name = "zk"
      }
    },
    auto_attach = {
      enabled = true,
      filetypes = { "markdown" }
    }
  }
end

return M
