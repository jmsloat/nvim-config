local M = {
  "nvim-telescope/telescope.nvim",
  commit = "8c69f58427f98b2ca39a90a36db830c06e30351c",
  event = "Bufenter",
  cmd = { "Telescope" },
  dependencies = {
    {
      "ahmedkhalf/project.nvim",
      commit = "8c6bad7d22eef1b71144b401c9f74ed01526a4fb",
    },
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build',
    },
  },
}

local actions = require "telescope.actions"
local telescope = require "telescope"

M.opts = {
  defaults = {
    prompt_prefix = " ",
    selection_caret = " ",
    file_ignore_patterns = {
      ".git/",
      "node_modules",
      "old",
      "bazel-bin",
      "bazel-out",
      "bazel-private-cloud",
      "bazel-testlogs",
      "frontend",
      "vendor",
    },
    layout_strategy = 'vertical',
    path_display = {truncate = 3},
    mappings = {
      i = {
        ["<Down>"] = actions.move_selection_next,
        ["<Up>"] = actions.move_selection_previous,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<Esc>"] = actions.close,
      },
    },
  },
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    }
  },
  config = function(_, opts) 
    telescope.load_extension('fzf')
    require('telescope').setup(opts)
  end
}


return M
