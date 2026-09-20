local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add {
  gh 'ThePrimeagen/git-worktree.nvim',
  gh 'nvim-lua/plenary.nvim',
}
