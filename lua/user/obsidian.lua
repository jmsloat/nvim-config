local M = {
  "epwalsh/obsidian.nvim",
  lazy = true,
  event = {
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    "BufReadPre "
      .. vim.fn.expand "~"
      .. "/notes/**.md",
    "BufNewFile " .. vim.fn.expand "~" .. "/notes/**.md",
  },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
  },
  opts = {
    dir = "~/notes", -- no need to call 'vim.fn.expand' here
    -- see below for full list of options 👇
  },
}

function M.config()
  require("obsidian").setup {
    disable_frontmatter = true,
    daily_notes = {
      folder = "journal",
      template = "templates/daily-note.md",
    },
    templates = {
      subdir = "templates",
      date_format = "%Y-%m-%d",
      time_format = "%H:%M",
    },
  }
end

return M
