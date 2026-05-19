vim.pack.add {
  gh 'nvim-lua/plenary.nvim',
  gh 'nvim-treesitter/nvim-treesitter',
  gh 'ThePrimeagen/refactoring.nvim',
}

require('refactoring').setup {}

vim.keymap.set('x', '<leader>re', function() require('refactoring').refactor 'Extract Function' end, { desc = '[R]efactor [E]xtract function' })
vim.keymap.set('x', '<leader>rv', function() require('refactoring').refactor 'Extract Variable' end, { desc = '[R]efactor Extract [V]ariable' })
vim.keymap.set({ 'n', 'x' }, '<leader>ri', function() require('refactoring').refactor 'Inline Variable' end, { desc = '[R]efactor [I]nline variable' })
vim.keymap.set('n', '<leader>rf', function() require('refactoring').refactor 'Extract Block' end, { desc = '[R]efactor Extract [F]unction (block)' })
