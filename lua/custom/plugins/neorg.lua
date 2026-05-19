-- neorg's modern versions need these deps explicitly listed
vim.pack.add {
  gh 'nvim-lua/plenary.nvim',
  gh 'nvim-neorg/lua-utils.nvim',
  gh 'MunifTanjim/nui.nvim',
  gh 'pysan3/pathlib.nvim',
  gh 'nvim-neotest/nvim-nio',
  { src = gh 'nvim-neorg/neorg', version = vim.version.range '*' },
}

require('neorg').setup {
  load = {
    ['core.defaults'] = {},
    ['core.concealer'] = {},
    ['core.summary'] = {},
    ['core.dirman'] = {
      config = {
        workspaces = {
          work = '~/Dropbox/notes/work',
          home = '~/Dropbox/notes/home',
          sabbatical = '~/Dropbox/notes/sabbatical',
          personal = '~/Dropbox/notes/personal',
        },
        default_workspace = 'work',
      },
    },
  },
}
