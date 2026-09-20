local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add {
  gh 'gbprod/nord.nvim',
}
vim.cmd.colorscheme 'nord'
