return {
  'nordtheme/vim',
  config = function()
    priority = 1000 -- Make sure to load this before all the other start plugins.
    vim.cmd.colorscheme 'nord'
  end,
}
