-- opts.lua -- Configures general vim options.
local opt = vim.opt
local cmd = vim.api.nvim_command

-- Context
opt.colorcolumn = '80'
opt.number = true
opt.relativenumber = true
opt.scrolloff = 4
opt.signcolumn = "yes"

-- Filetypes
opt.encoding = 'utf8'
opt.fileencoding = 'utf8'

-- Theme
opt.syntax = "ON"
opt.termguicolors = true
cmd('colorscheme monokai')

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
-- opt.hlsearch = false

-- Whitespace
opt.expandtab = true
opt.shiftwidth = 4
opt.softtabstop = 4
opt.tabstop = 4

-- Splits
opt.splitright = true
opt.splitbelow = true

