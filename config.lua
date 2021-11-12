-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = ","
-- Lua Line default configs
lvim.builtin.lualine.style = "default"

lvim.builtin.nvimtree.hide_dotfiles = 0
-- general
lvim.log.level = "debug"
lvim.format_on_save = true


-- ColorScheme
-- lvim.colorscheme = "onedarker"
require('themes.tokyonight')



-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "javascript",
  "json",
  "jsdoc",
  "lua",
  "python",
  "typescript",
  "tsx",
  "vue",
  "html",
  "css",
  "scss",
  "regex",
  "rust",
  "yaml",
  "php",
  "graphql"
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- Personal Configurations

lvim.keys.normal_mode["<C-s>"] = ":w<CR>"

lvim.lang.php.formatters = {
  {
    exe = "phpcbf",
    args = { "--standard=PSR12", "-q", "-" },
    stdout = true,
  },
}

lvim.plugins = {
  {
    -- Tokyo night colorscheme
    "folke/tokyonight.nvim"
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function ()
      require("colorizer").setup({ "*" }, {
        RGB = true, -- #RGB hex codes
        RRGGBB = true, -- #RRGGBB hex codes
        RRGGBBAA = true, -- #RRGGBBAA hex codes
        names = true,
        rgb_fn = true, -- CSS rgb() and rgba() functions
        hsl_fn = true, -- CSS hsl() and hsla() functions
        css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
      })
    end
  },
  {
    "metakirby5/codi.vim",
     cmd = "Codi",
  },
  {
    "karb94/neoscroll.nvim",
    event = "WinScrolled",
    config = function()
    require('neoscroll').setup({
          -- All these keys will be mapped to their corresponding default scrolling animation
          mappings = {'<C-u>', '<C-d>', '<C-b>',
          '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
          hide_cursor = true,          -- Hide cursor while scrolling
          stop_eof = true,             -- Stop at <EOF> when scrolling downwards
          use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
          respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
          cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
          easing_function = nil,        -- Default easing function
          pre_hook = nil,              -- Function to run before the scrolling animation starts
          post_hook = nil,              -- Function to run after the scrolling animation ends
          })
      end
  },
  {
    "npxbr/glow.nvim",
    ft = {"markdown"}
  },
  {
    "arnaud-lb/vim-php-namespace"
  },
  {
    "tpope/vim-surround",
    keys = {"c", "d", "y"}
  }
}
lvim.keys.normal_mode["<leader>u"] = "<Esc>:call PhpInsertUse()<CR>"
local graphql_opts ={
  filetypes = {
      "vue",
      "javascript",
      "typescript",
      "typescriptreact",
      "javascriptreact",
      "javascript.jsx",
      "php",
  }
}
require("lvim.lsp.manager").setup("graphql", graphql_opts)

-- Emmet Ls
require('plug-settings.emmet')

-- Tailwindcss
require('plug-settings.tailwindcss')

-- Change Telescope find_files with CTRL + F
vim.api.nvim_set_keymap("n", "<C-f>", ":Telescope find_files<cr>", { noremap = true, silent = true })

-- Transparent
lvim.transparent_window = false

-- Autocommands
require('autocommands').config()
