vim.pack.add { gh 'nvim-treesitter/nvim-treesitter', gh 'nvim-tree/nvim-web-devicons', gh 'stevearc/aerial.nvim' }

require('aerial').setup {
  layout = { default_direction = 'prefer_left' },
  on_attach = function(bufnr)
    vim.keymap.set('n', '{', '<cmd>AerialPrev<CR>', { buffer = bufnr })
    vim.keymap.set('n', '}', '<cmd>AerialNext<CR>', { buffer = bufnr })
  end,
}

vim.keymap.set('n', '<leader>a', '<cmd>AerialToggle!<CR>', { desc = 'Toggle Aerial' })
