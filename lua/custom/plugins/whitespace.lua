vim.pack.add { 'https://github.com/johnfrankmorgan/whitespace.nvim' }

require('whitespace-nvim').setup {
  highlight = 'DiffDelete',
  ignored_filetypes = { 'TelescopePrompt', 'Trouble', 'help' },
  ignore_terminal = true,
}

vim.keymap.set('n', '<Leader>ct', require('whitespace-nvim').trim, { desc = 'Remove trailing whitespace' })
