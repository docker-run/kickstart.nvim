vim.pack.add { gh 'nvim-tree/nvim-web-devicons', gh 'stevearc/oil.nvim' }

require('oil').setup {
  view_options = { show_hidden = true },
  keymaps = {
    ['<C-h>'] = false,
    ['<C-l>'] = false,
  },
}

vim.keymap.set('n', '<leader>-', require('oil').open, { desc = 'Browse parent directory' })
vim.keymap.set('n', '<leader>cf', '<cmd>edit $MYVIMRC<CR>', { desc = 'open init.lua' })
