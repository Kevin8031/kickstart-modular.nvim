require('mason-lspconfig').setup {
  automatic_enable = true,
}

vim.lsp.enable('clangd', true)

vim.lsp.config['texlab'] = {
  settings = {
    texlab = {
      build = {
        executable = '/dev/null',
        args = { '--output-directory=build' },
        auxDirectory = 'build',
        logDirectory = 'build',
        pdfDirectory = 'build',
      },
    },
  },
}
