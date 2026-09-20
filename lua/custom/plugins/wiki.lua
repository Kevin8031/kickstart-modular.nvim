local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add {
  gh 'lervag/wiki.vim',
}

vim.g.wiki_root = '~/Syncthing/notes/'
vim.g.wiki_export = {
  args = '--pdf-engine=xelatex -V "mainfont:Inter"',
  from_format = 'markdown',
  ext = 'pdf',
  view = true,
  viewer = 'zathura',
}
