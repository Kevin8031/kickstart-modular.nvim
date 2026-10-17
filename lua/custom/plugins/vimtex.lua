-- To use the most recent version from git, you can do simply:
vim.pack.add { 'https://github.com/lervag/vimtex' }

-- VimTeX configuration goes here, e.g.
vim.g.vimtex_view_method = 'zathura'

vim.g.vimtex_compiler_latexmk = {
  out_dir = 'build',
}
