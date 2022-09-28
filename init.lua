-- init.lua -- Neovim entrypoint. Gets everything setup and calls other setup scripts.

require('vars')
require('opts')
require('keys')

-- Plugins
require('plug')
require('plug_opts')

