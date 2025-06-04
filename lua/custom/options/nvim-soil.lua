vim.api.nvim_create_autocmd('BufWritePost', {
  pattern = '*.puml,*.plantuml',
  callback = function(args)
    if vim.g.disable_soil_autogenerate or vim.b[args.buf].disable_soil_autogenerate then
      return false
    end
    pcall(vim.cmd 'Soil')
    return true
  end,
})

vim.api.nvim_create_user_command('SoilDisable', function(args)
  if args.bang then
    -- FormatDisable! will disable formatting just for this buffer
    vim.b.disable_soil_autogenerate = true
  else
    vim.g.disable_soil_autogenerate = true
  end
end, {
  desc = 'Disable plantuml graph autogeneration',
  bang = true,
})

vim.api.nvim_create_user_command('SoilEnable', function()
  vim.b.disable_soil_autogenerate = false
  vim.g.disable_soil_autogenerate = false
end, {
  desc = 'Enable plantuml graph autogeneration',
})
