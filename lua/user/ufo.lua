local M = {
  "kevinhwang91/nvim-ufo",
  commit = "b0741a647efd98d9abb6cb653e056d24a07e4581",
  event = "BufEnter",
  dependencies = {
    'kevinhwang91/promise-async',
  },
}

function M.config()
  local ufo = require('ufo')
  vim.o.foldcolumn = '1'
  vim.o.foldlevel = 99
  vim.o.foldlevelstart = 99
  vim.o.foldenable = true

  vim.keymap.set('n', 'zR', ufo.openAllFolds)
  vim.keymap.set('n', 'zM', ufo.closeAllFolds)

  ufo.setup({
    provider_selector = function(bufnr, filetype, buftype)
      if filetype == 'norg' then
        return {'treesitter', 'indent'}
      else
        return nil
      end
    end
  })
end

return M

