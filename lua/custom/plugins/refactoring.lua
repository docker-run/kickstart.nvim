return {
  'ThePrimeagen/refactoring.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  event = 'VeryLazy',
  opts = {},
  keys = {
    { '<leader>re', function() require('refactoring').refactor('Extract Function') end, mode = 'x', desc = '[R]efactor [E]xtract function' },
    { '<leader>rv', function() require('refactoring').refactor('Extract Variable') end, mode = 'x', desc = '[R]efactor Extract [V]ariable' },
    { '<leader>ri', function() require('refactoring').refactor('Inline Variable') end, mode = { 'n', 'x' }, desc = '[R]efactor [I]nline variable' },
    { '<leader>rf', function() require('refactoring').refactor('Extract Block') end, desc = '[R]efactor Extract [F]unction (block)' },
  },
}
