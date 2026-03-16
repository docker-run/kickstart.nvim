return {
  'nvim-treesitter/nvim-treesitter-context',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  event = 'VeryLazy',
  opts = {
    enable = true,
    max_lines = 3,
  },
  keys = {
    { '<leader>tc', '<cmd>TSContextToggle<cr>', desc = '[T]oggle Treesitter [C]ontext' },
  },
}
