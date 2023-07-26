local M = {
  "nvim-neotest/neotest",
  event = "BufReadPre",
  commit = "fb0b31ae1dcdc7d68af5c66db4434ae5ebeffcfc",
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
      commit = "f2580cad67ef0181403cf65858ab638ffd3ede9f",
    }
  },
}

function M.config()
  require('neotest').setup {
    adapters = {
      require('neotest-go')({
        experimental = {
          test_table = true,
        }
      })
    }
  }
end

return M
