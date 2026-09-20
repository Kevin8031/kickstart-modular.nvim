local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add {
  gh 'MeanderingProgrammer/render-markdown.nvim',
  gh 'nvim-treesitter/nvim-treesitter', -- if you use the mini.nvim suite
  gh 'nvim-mini/mini.nvim',
}
-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.icons' }, -- if you use standalone mini plugins
-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
