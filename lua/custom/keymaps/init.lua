-- Custom keymaps
require 'custom.keymaps.telescope'
require 'custom.keymaps.lsp'
require 'custom.keymaps.git-worktree'

-- Capital J and K to move selection up and down lines
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = 'Open [U]ndotree window' })

-- Copies to system clipboard
vim.keymap.set('n', '<C-y>', '"+y')
vim.keymap.set('v', '<C-y>', '"+y')
vim.keymap.set('n', '<C-Y>', '"+Y')

-- Doesn't loose the last element copied in the copy buffer
-- when replacing another item
vim.keymap.set('x', '<leader>p', '"_dP')
vim.keymap.set('n', '<leader>d', '"_d')
vim.keymap.set('v', '<leader>d', '"_d')

-- H and L for beginning/end of line
vim.keymap.set('n', 'H', '^')
vim.keymap.set('n', 'L', '$')

vim.keymap.set('v', 'H', '^')
vim.keymap.set('v', 'L', '$')

-- Netrw mappings
vim.keymap.set('n', '<leader>pe', vim.cmd.Ex, { desc = '[P]roject [E]xplore (Open Netrw)' })
vim.keymap.set('n', '<leader>pE', vim.cmd.Vex, { desc = '[P]roject V[E]xplore (Open Netrw in side view)' })

-- Close buffer
vim.keymap.set('n', '<leader>bd', vim.cmd.bdelete, { desc = '[B]uffer [D]elete' })
