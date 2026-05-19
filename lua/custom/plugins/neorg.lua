-- Download Neorg + deps at startup, but defer setup() until a .norg buffer
-- opens. Mirrors the lazy.nvim event = 'FileType norg' behavior so the norg
-- treesitter parser warning doesn't fire on every startup.
vim.pack.add {
  gh 'nvim-lua/plenary.nvim',
  gh 'nvim-neorg/lua-utils.nvim',
  gh 'MunifTanjim/nui.nvim',
  gh 'pysan3/pathlib.nvim',
  gh 'nvim-neotest/nvim-nio',
  { src = gh 'nvim-neorg/neorg', version = vim.version.range '*' },
}

local neorg_loaded = false
local function load_neorg()
  if neorg_loaded then return end
  neorg_loaded = true
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
end

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'norg',
  group = vim.api.nvim_create_augroup('user-neorg-lazy', { clear = true }),
  callback = load_neorg,
})

-- Also load on :Neorg commands (e.g. :Neorg workspace home)
vim.api.nvim_create_user_command('Neorg', function(opts)
  load_neorg()
  vim.cmd('Neorg ' .. opts.args)
end, { nargs = '*', complete = 'file' })
