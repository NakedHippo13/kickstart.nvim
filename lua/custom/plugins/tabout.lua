vim.pack.add {
  'https://github.com/abecodes/tabout.nvim',
}

require('tabout').setup {
  tabkey = '<Tab>',
  backwards_tabkey = '<S-Tab>',
}
