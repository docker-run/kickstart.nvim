return {
  'nvim-neorg/neorg',
  version = '*', -- Pin Neorg to the latest stable release
  lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
  opts = {
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
  },
}
