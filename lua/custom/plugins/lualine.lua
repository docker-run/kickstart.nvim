return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      options = { theme = 'auto', refresh = {
        statusline = 100,
        tabline = 100,
        winbar = 100,
      } },
      sections = {
        lualine_a = { { 'mode', upper = true } },
        lualine_b = { { 'branch', icon = '' } },
        lualine_c = {
          { 'filename', file_status = true },
        },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {},
      },
      extensions = { 'fzf' },
    }
  end,
}
