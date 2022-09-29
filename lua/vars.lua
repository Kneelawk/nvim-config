-- vars.lua -- Sets up any needed variables.
local g = vim.g
g.t_co = 256
g.background = "dark"

-- Remap Leader to <Space>
g.mapleader = '<Space>'
g.localleader = '<Space>'

-- Nvim-Tree
-- Disable netrm
-- vim.g.loaded = 1
-- vim.g.loaded_netrwPlugin = 1

-- Neovim-QT
-- Force use of a Nerd font in Neovim-QT
vim.o.guifont = "JetBrainsMono Nerd Font:h10"

-- VimTeX
-- Use Zathura
g.vimtex_view_method = "zathura"

