return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  config = function()
    require('oil').setup {
      view_options = { show_hidden = true },
      keymaps = {
        ['<C-h>'] = false,
        ['<C-l>'] = false,
      },
    }
    vim.keymap.set('n', '<leader>-', require('oil').open, { desc = 'Browse parent directory' })
    vim.keymap.set('n', '<leader>cf', '<cmd>edit $MYVIMRC<CR>', { desc = 'open init.lua' })
  end,
  -- Optional dependencies
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
}
