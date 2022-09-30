-- init.lua -- Neovim entrypoint. Gets everything setup and calls other setup scripts.

-- Remap Leader to <Space>
vim.g.mapleader = '<Space>'
vim.g.localleader = '<Space>'

-- Setup
require('vars')
require('opts')
require('keys')

-- Plugins
require('plug')
require('plug_opts')

