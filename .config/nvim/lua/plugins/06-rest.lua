return {
  { 'nvim-neotest/nvim-nio' },
  {
    'vhyrro/luarocks.nvim',
    priority = 1000,
    config = true,
  },
  {
    'rest-nvim/rest.nvim',
    ft = 'http',
    dependencies = {
      'luarocks.nvim',
      opts = {
        rocks = { 'lua-curl', 'nvim-nio', 'mimetypes', 'xml2lua' },
      },
    },
    config = function()
      require('rest-nvim').setup {}
      vim.keymap.set('n', '<leader>rr', '<CMD>Rest run cursor<CR>', { desc = '[Rest] Run Cursor' })
      vim.keymap.set('n', '<leader>rl', '<CMD>Rest run last<CR>', { desc = '[Rest] Run Last' })
    end,
  },
}
