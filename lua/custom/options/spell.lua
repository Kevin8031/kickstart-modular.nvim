local config_path = vim.fn.stdpath 'config' -- Get Neovim's config path
local add_file = config_path .. '/spell/global.utf-8.add'
local spl_file = add_file .. '.spl'
local langs = { 'it', 'en' }

require('nvim.spellfile').config(langs)
vim.opt.spelllang = langs
vim.opt.spell = true
vim.opt.spellfile = add_file

-- Ensure that the binary spl file is up-to-date with the source add file
vim.api.nvim_create_autocmd({ 'BufEnter', 'FocusGained' }, {
  pattern = '*',
  callback = function()
    if vim.fn.filereadable(add_file) == 1 then
      local add_mtime = vim.fn.getftime(add_file) -- Get modification time of .add file
      local spl_mtime = vim.fn.getftime(spl_file) -- Get modification time of .add.spl file

      -- Run mkspell! only if .add is newer than .add.spl or .add.spl doesn't exist
      if add_mtime > spl_mtime or spl_mtime == -1 then vim.cmd('silent! mkspell! ' .. spl_file .. ' ' .. add_file) end

      -- Reload spellchecker if the file did not exist
      if spl_mtime == -1 then
        vim.opt.spell = false
        vim.opt.spell = true
      end
    end
  end,
})
