-- plug_opts_lang.lua -- Configures language-specific features

-- Treesitter
require('nvim-treesitter.configs').setup {
  ensure_installed = { "lua", "rust", "toml", "kotlin", "java", "python" },
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  },
  ident = {
    enable = true
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = 10000
  }
}

-- Treesitter folding
-- WORKAROUND
vim.api.nvim_create_autocmd({'BufEnter', 'BufAdd', 'BufNew', 'BufNewFile', 'BufWinEnter'}, {
  group = vim.api.nvim_create_augroup('TS_FOLD_WORKAROUND', {}),
  callback = function()
    vim.opt.foldmethod = 'expr'
    vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
  end
})
-- ENDWORKAROUND

-- HLArgs
require('hlargs').setup()

