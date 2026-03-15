return {
  url = 'https://codeberg.org/andyg/leap.nvim',
  config = function()
    -- Use the new recommended setup instead of deprecated set_default_mappings()
    -- 's' for leap forward, 'S' for leap from any window
    vim.keymap.set({ 'n', 'x', 'o' }, 's', '<Plug>(leap)')
    vim.keymap.set('n', 'S', '<Plug>(leap-from-window)')
  end,
}
