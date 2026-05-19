vim.pack.add { gh 'tris203/precognition.nvim' }
require('precognition').setup { startVisible = false }

vim.keymap.set('n', '<leader>tp', function() require('precognition').toggle() end, { desc = '[T]oggle [P]recognition' })
