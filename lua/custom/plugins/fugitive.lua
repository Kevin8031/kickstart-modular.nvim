local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add {
  gh 'tpope/vim-fugitive',
}

vim.keymap.set('n', '<leader>gs', vim.cmd.Git, { desc = '[G]it [S]tatus' })
