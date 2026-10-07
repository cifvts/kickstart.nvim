vim.g.barbar_auto_setup = false

vim.pack.add {
  'https://github.com/lewis6991/gitsigns.nvim',
  'https://github.com/romgrk/barbar.nvim',
}

require('barbar').setup {}
