local M = {
  "nvim-neotest/neotest",
  event = "BufReadPre",
  commit = "89a5b1fc22ee5d459262955fe564c3d14e35fd67",
  dependencies = {
    {
      "nvim-lua/plenary.nvim",
      commit = "9a0d3bf7b832818c042aaf30f692b081ddd58bd9",
      lazy = true,
    },
    {
      "nvim-treesitter/nvim-treesitter",
      commit = "226c1475a46a2ef6d840af9caa0117a439465500",
    },
    {
      "nvim-neotest/neotest-go",
      commit = "ba5d536304ed6971f00d16b48ec26997622ffb43",
    },
  },
}

function M.config()
  require("neotest").setup {
    adapters = {
      require "neotest-go" {
        experimental = {
          test_table = true,
        },
      },
    },
  }
end

return M
