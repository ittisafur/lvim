local emmet_ls_opts = {
    cmd = { vim.fn.stdpath "data" .. "/lsp_servers/emmet_ls/node_modules/.bin/emmet-ls", "--stdio" },
    filetypes = {
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
    },
    root_dir = function(_)
      return vim.loop.cwd()
    end,
    settings = {},
}

require("lvim.lsp.manager").setup("emmet_ls", emmet_ls_opts)
