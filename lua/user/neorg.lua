
local M = {
  "nvim-neorg/neorg",
  event = "VeryLazy",
  build = ":Neorg sync-parsers",
  dependencies = {
    {
      "nvim-lua/plenary.nvim",
    },
  },
}

function M.config()
  require('neorg').setup {
    load = {
      ["core.defaults"] = {}, -- Loads default behaviour
      ["core.concealer"] = {}, -- Adds pretty icons to your documents
      ["core.ui.calendar"] = {}, -- calendar
      ["core.completion"] = { config = { engine = "nvim-cmp", name = "[Neorg]" } },
      ["core.dirman"] = { -- Manages Neorg workspaces
        config = {
          workspaces = {
            notes = "~/notes",
          },
        },
      },
    }
  }
end

return M
