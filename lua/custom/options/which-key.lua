local which_key = require 'which-key'

which_key.add {
  { '<leader>p', group = '[P]roject' },
  { '<leader>a', group = '[A]dd buffer to harpoon' },
  { '<leader>p_', hidden = true },
}
