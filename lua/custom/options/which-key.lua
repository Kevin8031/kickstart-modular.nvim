local which_key = require 'which-key'

which_key.add {
  { '<leader>p', group = '[P]roject' },
  { '<leader>a', group = '[A]dd buffer to harpoon' },
  { '<leader>k', group = 'Show signature help' },
  { '<leader>e', group = 'Open diagnostic float' },
  { '<leader>p_', hidden = true },
}
