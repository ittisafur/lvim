-- General Settings
require('general')

-- ColorScheme
require('themes.tokyonight')

-- Treesitter
require('treesitters')

-- Personal Configurations
require('keymaps.keymappings')

-- Plugins
require('plugins')

-- Telescope Settings
require('plug-settings.telescope')

-- Graphql Settings
require('lsp.graphql')

-- Emmet Ls Settings
require('plug-settings.emmet')

-- Tailwindcss Settings
require('plug-settings.tailwindcss')

-- Autocommands
require('autocommands').config()
