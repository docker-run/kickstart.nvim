vim.o.foldcolumn = '0'
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true

vim.pack.add { gh 'kevinhwang91/promise-async', gh 'kevinhwang91/nvim-ufo' }

require('ufo').setup {}

vim.keymap.set('n', 'zR', function() require('ufo').openAllFolds() end, { desc = 'Open all folds' })
vim.keymap.set('n', 'zM', function() require('ufo').closeAllFolds() end, { desc = 'Close all folds' })
vim.keymap.set('n', 'zK', function() require('ufo').peekFoldedLinesUnderCursor() end, { desc = 'Peek fold' })
