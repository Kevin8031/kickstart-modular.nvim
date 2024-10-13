-- Expand current line diagnostic message
vim.keymap.set('n', '<leader>e', function()
  vim.diagnostic.open_float()
end)

-- Get signature help
vim.keymap.set('n', '<leader>k', function()
  vim.lsp.buf.signature_help()
end)
