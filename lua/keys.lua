-- keys.lua -- Setup keyboard shortcuts.
local map = vim.api.nvim_set_keymap

-- Nvim-Tree toggle
map('n', 'tt', ':NvimTreeToggle<CR>', {}) -- Toggle nvim-tree
map('n', 'ts', ':TagbarToggle<CR>', {}) -- Toggle Tagbar structure viewer
map('n', 'ff', ':Telescope find_files<CR>', {}) -- Open find-files menu

-- Floaterm
map('n', '<Leader>ft', ':FloatermNew --name=myfloat --height=0.8 --width=0.7 --autoclose=2 fish <CR>', {}) -- Setup a floaterm window
map('n', 'tf', ':FloatermToggle myfloat<CR>', {}) -- Open floaterm
map('t', '<Esc>', '<C-\\><C-n>', {}) -- Exit 'Terminal' mode
map('n', 'tr', '<C-w>v:terminal<CR>i', {}) -- Open a new window on the right and start a terminal there

