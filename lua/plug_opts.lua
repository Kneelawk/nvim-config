-- plug_opts.lua -- General plugin options and initialization.

-- Nvim-Tree
require('nvim-tree').setup {}

-- Lualine
require('lualine').setup {
  options = {
    theme = 'powerline'
  }
}

-- Autopairs
require('nvim-autopairs').setup {}

-- Comment
require('Comment').setup()

-- Todo Comments
require('todo-comments').setup {}

-- Language Options
require('plug_opts_lang')

-- Language-Server Options
require('plug_opts_lsp')

-- Autocomplete Options
require('plug_opts_cmp')

