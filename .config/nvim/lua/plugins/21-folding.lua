return {
  {
    'kevinhwang91/nvim-ufo',
    lazy = false,
    dependencies = { 'kevinhwang91/promise-async' },
    event = 'BufRead',
    keys = {
      {
        'zR',
        function()
          require('ufo').openAllFolds()
        end,
      },
      {
        'zM',
        function()
          require('ufo').closeAllFolds()
        end,
      },
      {
        'zk',
        function()
          local winid = require('ufo').peekFoldedLinesUnderCursor()
          if not winid then
            vim.lsp.buf.hover()
          end
        end,
        { desc = '[Fold] Peek' },
      },
    },
    config = function()
      vim.o.foldcolumn = '1'
      vim.o.foldlevel = 99
      vim.o.foldlevelstart = 99
      vim.o.foldenable = true

      require('ufo').setup {
        -- close_fold_kinds_for_ft = { 'imports' },
        provider_selector = function()
          return { 'lsp', 'indent' }
        end,
      }
    end,
  },
}
