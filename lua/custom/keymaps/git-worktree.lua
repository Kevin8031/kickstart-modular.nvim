vim.keymap.set('n', '<leader>gw', function()
  require('telescope').extensions.git_worktree.git_worktrees()
  -- <Enter> - switches to that worktree
  -- <c-d> - deletes that worktree
  -- <c-f> - toggles forcing of the next deletion
end, { desc = 'List [G]it [W]orktree' })

vim.keymap.set('n', '<leader>gW', function()
  require('telescope').extensions.git_worktree.create_git_worktree()
end, { desc = 'Create [G]it [W]orktree' })
