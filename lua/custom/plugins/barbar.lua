-- barbar requires this BEFORE the plugin loads so it doesn't auto-setup
vim.g.barbar_auto_setup = false

vim.pack.add {
  gh 'lewis6991/gitsigns.nvim',
  gh 'nvim-tree/nvim-web-devicons',
  { src = gh 'romgrk/barbar.nvim', version = vim.version.range '^1.0.0' },
}

require('barbar').setup {}
