return {
  'tpope/vim-fugitive',
  config = function()
    -- Set mapping to open git
    vim.keymap.set('n', '<leader>gs', vim.cmd.Git, { desc = '[G]it [S]tatus' })
  end,
}
