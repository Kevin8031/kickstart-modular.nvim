-- Config from
-- https://vonheikemen.github.io/devlog/tools/using-netrw-vim-builtin-file-explorer/

-- Keep the current directory and the browsing directory synced. This helps you avoid the move files error.
vim.g.netrw_keepdir = 0

-- Change the size of the Netrw window when it creates a split. I think 30% is fine.
vim.g.netrw_winsize = 30

-- Hide the banner (if you want). To show it temporarily you can use I inside Netrw.
vim.g.netrw_banner = 0

-- Change the copy command. Mostly to enable recursive copy of directories.
vim.g.netrw_localcopydircmd = 'cp -r'

-- Highlight marked files in the same way search matches are.
-- hi! link netrwMarkFile Search
