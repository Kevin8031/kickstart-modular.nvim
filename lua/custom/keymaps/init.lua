-- Custom keymaps
require 'custom.keymaps.telescope'
require 'custom.keymaps.lsp'
require 'custom.keymaps.git-worktree'
require 'custom.keymaps.wiki'

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

function InsertMarkdownURL()
  local url = vim.fn.getreg '+'
  if url == '' then return end
  local cmd = 'curl -L ' .. vim.fn.shellescape(url) .. ' 2>/dev/null'
  local handle = io.popen(cmd)
  if not handle then return end
  local html = handle:read '*a'
  handle:close()
  local title = ''
  local pattern = '<title>(.-)</title>'
  local m = string.match(html, pattern)
  if m then title = m end
  if title ~= '' then
    local markdownLink = '[' .. title .. '](' .. url .. ')'
    vim.api.nvim_command("call append(line('.'), '" .. markdownLink .. "')")
  else
    print 'Title not found for link'
  end
end

vim.keymap.set('n', '<leader>lg', ':lua InsertMarkdownURL()<CR>', { silent = true, noremap = true, desc = '[L]ink [G]et Title' })

vim.keymap.set('n', '<leader>wj', function()
  -- gets the current file name without extension
  local date = vim.fn.expand '%:t:r'
  local pos = vim.api.nvim_win_get_cursor(0)[2]
  local line = vim.api.nvim_get_current_line()
  local nline = line:sub(0, pos) .. '# ' .. date .. line:sub(pos + 1)
  vim.api.nvim_set_current_line(nline)
end, { desc = '[W]iki [J]ournal Date (Write date on current line)' })
