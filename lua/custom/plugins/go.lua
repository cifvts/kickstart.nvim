vim.pack.add {
  'https://github.com/ray-x/guihua.lua',
  'https://github.com/ray-x/go.nvim',
}

require('go').setup {
  lsp_codelens = false,
  lsp_inlay_hints = {
    enable = false,
  },
}

vim.api.nvim_create_autocmd('BufWritePre', {
  group = vim.api.nvim_create_augroup('GoFormat', {}),
  pattern = '*.go',
  callback = function() require('go.format').goimport() end,
})
