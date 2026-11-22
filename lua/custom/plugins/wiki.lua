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

vim.g.wiki_select_method = {
  pages = require('wiki.telescope').pages,
  tags = require('wiki.telescope').tags,
  toc = require('wiki.telescope').toc,
  links = require('wiki.telescope').links,
}

vim.cmd [[
  " This is basically the same as wiki#url#resolvers#wiki, except we added
  " a line to decode the encoded URL before we resolve the path.
  function! MyWikiResolver(url) abort
    let l:url = deepcopy(a:url)

    let l:url.anchor = wiki#url#utils#extract_anchor(l:url.stripped)

    let l:path = split(l:url.stripped, '#', 1)[0]
    let l:path = wiki#url#utils#url_decode(l:path)
    let l:url.path = wiki#url#utils#resolve_path(l:path, l:url.origin)

    return l:url
  endfunction

  " Change the wiki scheme resolver
  let g:wiki_link_schemes = {
        \ 'wiki': {
        \   'resolver': function('MyWikiResolver'),
        \ }
        \}

  " Only change the url_transform - will keep other parts at default settings
  let g:wiki_link_creation = {
        \ 'md': {
        \   'url_transform': { x -> wiki#url#utils#url_encode(x) },
        \ },
        \ 'wiki': {
        \   'url_transform': { x -> wiki#url#utils#url_encode(x) },
        \ },
        \}
]]
