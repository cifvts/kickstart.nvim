vim.pack.add {
  { src = 'https://github.com/nvim-neo-tree/neo-tree.nvim', version = vim.version.range '3.*' },
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/MunifTanjim/nui.nvim',
}

vim.keymap.set('n', '<leader>fp', '<cmd>Neotree reveal toggle<cr>', { desc = 'Toggle Filetree' })
vim.keymap.set('n', '<leader>ft', '<cmd>Neotree<cr>', { desc = 'Focus Filetree' })

require('neo-tree').setup {
  filesystem = {
    use_libuv_file_watcher = true,
  },
}
