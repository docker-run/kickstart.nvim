vim.pack.add { { src = 'https://codeberg.org/andyg/leap.nvim' } }

-- Use the new recommended setup instead of deprecated set_default_mappings()
vim.keymap.set({ 'n', 'x', 'o' }, 's', '<Plug>(leap)')
vim.keymap.set('n', 'S', '<Plug>(leap-from-window)')
