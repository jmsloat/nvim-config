local M = {
  "epwalsh/obsidian.nvim",
  lazy = true,
  event = {
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    "BufReadPre " .. vim.fn.expand "~" .. "/DriveFileStream/My Drive/notes/**.md",
    "BufNewFile " .. vim.fn.expand "~" .. "DriveFileStream/My Drive/notes/**.md",
  },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    dir = "~/DriveFileStream/My Drive/notes/",  -- no need to call 'vim.fn.expand' here
    -- see below for full list of options 👇
  },
}

function M.config()
  require("obsidian").setup {
    disable_frontmatter = true,
    daily_notes = {
      folder = "journal",
      template = "templates/daily-note.md",
    }
  }
end

return M
