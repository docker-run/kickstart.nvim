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
            -- TODO move this to dropbox maybe?
            work = '~/notes/work',
            home = '~/notes/home',
            sabbatical = '~/notes/sabbatical',
            personal = '~/notes/personal',
          },
          default_workspace = 'work',
        },
      },
    },
  },
}
