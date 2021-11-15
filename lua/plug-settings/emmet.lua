local emmet_ls_opts = {
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
    }
}

require("lvim.lsp.manager").setup("emmet_ls", emmet_ls_opts)
