return {
  'lervag/wiki.vim',
  -- tag = "v0.10", -- uncomment to pin to a specific release
  init = function()
    -- wiki.vim configuration goes here, e.g.
    vim.g.wiki_root = '~/Syncthing/notes/'
    -- vim.g.wiki_export = {
    --   args = '--extract-media=_HTML',
    --   from_format = 'markdown',
    --   ext = 'html',
    --   link_ext_replace = false,
    --   output = '_HTML',
    --   -- view = false,
    -- }
  end,
}
