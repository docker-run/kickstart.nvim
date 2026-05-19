vim.pack.add { gh 'nvim-treesitter/nvim-treesitter', gh 'nvim-treesitter/nvim-treesitter-context' }

require('treesitter-context').setup {
  enable = true,
  max_lines = 3,
}

vim.keymap.set('n', '<leader>tc', '<cmd>TSContextToggle<cr>', { desc = '[T]oggle Treesitter [C]ontext' })
