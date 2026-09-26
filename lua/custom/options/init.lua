require 'custom.options.netrw'
require 'custom.options.which-key'
require 'custom.options.conform'
require 'custom.options.markdown'
require 'custom.options.spell'
require 'custom.options.lspconfig'
require 'custom.options.undo'

-- Save folds when closing buffer
vim.api.nvim_create_autocmd({ 'BufWinLeave' }, {
  pattern = { '*.*' },
  desc = 'save view (folds), when closing file',
  command = 'mkview',
})

-- Restore folds when closing buffer
vim.api.nvim_create_autocmd({ 'BufWinEnter' }, {
  pattern = { '*.*' },
  desc = 'load view (folds), when opening file',
  command = 'silent! loadview',
})
