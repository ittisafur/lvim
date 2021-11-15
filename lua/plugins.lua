lvim.plugins = {
  {
    "mattn/emmet-vim",
    ft = {
      "gohtml",
      "html",
      "postcss",
      "css",
      "sass",
      "scss",
      "less",
      "svelte",
      "vue",
      "javascript",
      "typescript",
      "typescriptreact",
      "javascriptreact",
      "javascript.jsx",
      "php",
    }
  },
  {
    "p00f/nvim-ts-rainbow",
  },
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    -- Tokyo night colorscheme
    "folke/tokyonight.nvim"
  },
  {
    "rose-pine/neovim",
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
  { "karb94/neoscroll.nvim",
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
    keys = {"c", "d", "y"},
    event = "BufRead"
  }
}