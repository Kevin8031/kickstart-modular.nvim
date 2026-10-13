require('mason-lspconfig').setup {
  automatic_enable = true,
}

vim.lsp.enable('clangd', true)
