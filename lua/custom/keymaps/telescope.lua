-- See `:help telescope.builtin`
local builtin = require 'telescope.builtin'
vim.keymap.set('n', '<leader>sF', builtin.git_files, { desc = '[S]earch Git [F]iles' })
