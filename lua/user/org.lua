local M = {
  'nvim-orgmode/orgmode',
  commit = "6e40eec330afdcec051a2fb6d85b92d3a04b6dac",
  dependencies = {
    { 'nvim-treesitter/nvim-treesitter', lazy = true },
  },
  event = 'VeryLazy',
}

function M.config()
  -- Load treesitter grammar for org
  require('orgmode').setup_ts_grammar()

  -- Setup treesitter
  require('nvim-treesitter.configs').setup({
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = { 'org' },
    },
    ensure_installed = { 'org' },
  })

  -- Setup orgmode
  require('orgmode').setup({
    org_agenda_files = '~/org/**/*',
    org_default_notes_file = '~/org/inbox.org',
    win_split_mode = 'float',
  })
end

return M
