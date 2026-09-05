require('render_latex').setup {
  render = {
    preset = 'match_text', -- "compact" or "presentation"
    inline = 'conceal', -- "content", "highlight", or false
    inline_symbols = true,
    live_preview = true,
    hide_on_cmdline = false,
  },
}

vim.opt.conceallevel = 2
vim.opt.concealcursor = 'nc'
