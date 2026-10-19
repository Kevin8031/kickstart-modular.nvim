-- To use the most recent version from git, you can do simply:
vim.pack.add { 'https://github.com/lervag/vimtex' }

-- VimTeX configuration goes here, e.g.
vim.g.vimtex_view_method = 'zathura'

vim.g.vimtex_compiler_latexmk = {
  out_dir = 'build',
  options = {
    '-shell-escape',
    '-verbose',
    '-file-line-error',
    '-synctex=1',
    '-interaction=nonstopmode',
  },
}

local autoFollow = false
local function toggleVimtexCursorFollow()
  if autoFollow then
    vim.cmd [[
        augroup VimtexViewOnCursorHold
            autocmd!
        augroup END
        ]]
    autoFollow = false
    vim.cmd 'echo "Cursor follow disabled"'
  else
    vim.cmd [[
        augroup VimtexViewOnCursorHold
            autocmd!
            autocmd CursorHold *.tex silent! VimtexView
        augroup END
        ]]
    autoFollow = true
    vim.cmd 'echo "Cursor follow enabled"'
  end
end
vim.api.nvim_create_user_command('VimtexToggleCursorFollow', toggleVimtexCursorFollow, { range = false, nargs = 0 })
