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
