-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = ","

-- Lua Line default configs
lvim.builtin.lualine.style = "lvim"

-- Show dot files in NvimTree
lvim.builtin.nvimtree.hide_dotfiles = 0

-- general
-- lvim.log.level = false -- Turn to "debug" while debugging
lvim.debug = false
lvim.format_on_save = true

vim.opt.wrap = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 6
vim.opt.guifont = "monospace:h14"
vim.opt.foldmethod = "manual" -- folding set to "expr" for treesitter based folding
vim.opt.foldexpr = ""

-- Transparent
-- lvim.transparent_window = false


-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0


