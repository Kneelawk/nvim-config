-- plug.lua -- Loads plugins and the Packer plugin manager.

-- Packer bootstrap
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Install plugins
return require('packer').startup {
  function(use)
    -- Use Packer to manage itself
    use {
      'wbthomason/packer.nvim',
      opt = false
    }
  
    -- Setup plugins
  
    -- Nvim-Tree
    use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons'
    }

    -- LAF plugins
    use 'DanilaMihailov/beacon.nvim' -- Highlights cursor
    use {
      'nvim-lualine/lualine.nvim', -- Status line
      requires = {
        'kyazdani42/nvim-web-devicons',
        opt = true
      }
    }
    use 'Yggdroot/indentLine' -- Shows indent lines
    use 'tanvirtin/monokai.nvim' -- Monokai color theme

    -- QOL plugins
    use 'mhinz/vim-startify' -- Start screen
    use {
      'nvim-telescope/telescope.nvim', -- Fuzzy file finder
      requires = 'nvim-lua/plenary.nvim'
    }
    use 'majutsushi/tagbar' -- Displays code structure
    use 'tpope/vim-fugitive' -- Git integration
    use 'junegunn/gv.vim' -- Show commit history
    use 'windwp/nvim-autopairs' -- Auto close brackets
    use 'RRethy/vim-illuminate' -- Highlights what you're hovering over
    use 'numToStr/Comment.nvim' -- Shortcuts for commenting & uncommenting
    use 'folke/todo-comments.nvim' -- Collects TODOs, FIXMEs, etc
    use 'tpope/vim-surround' -- Add, remove, change brackets
    use 'voldikss/vim-floaterm' -- Floating terminal

    -- Languages
    use {
      'nvim-treesitter/nvim-treesitter', -- Better syntax highlighting as well as some extra languages
      run = function() require('nvim-treesitter.install').update { with_sync = true } end
    }
    use 'lervag/vimtex' -- VimTeX latex plugin

    -- Language Features
    use 'm-demare/hlargs.nvim' -- Highlight function arguments

    -- LSP stuff
    use 'williamboman/mason.nvim' -- Manages LSP servers
    use 'williamboman/mason-lspconfig.nvim' -- Extra stuff for LSP servers
    use 'neovim/nvim-lspconfig' -- LSP-Config stuff?
    use 'simrat39/rust-tools.nvim' -- Handles rust LSP-Config settings
    use 'folke/trouble.nvim' -- Single pannel with rust-analyzer output
    use {
      'saecki/crates.nvim',
      requires = 'nvim-lua/plenary.nvim'
    }

    -- Completion stuff
    use 'hrsh7th/nvim-cmp' -- Completion framework
    use 'hrsh7th/cmp-nvim-lsp' -- LSP completion source

    -- Completion sources
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/cmp-omni' -- Get LaTeX autocomplete working
  
    -- Finish Packer bootstrap
    if packer_bootstrap then
      require('packer').sync()
    end
  end,
  config = {
    display = {
      open_fn = require('packer.util').float,
      show_all_info = true,
      prompt_border = 'double',
    }
  }
}

