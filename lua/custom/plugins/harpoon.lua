return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },

  config = function()
    local harpoon = require 'harpoon'

    -- REQUIRED
    harpoon:setup {
      settings = {
        sync_on_ui_close = true,
      },
    }
    -- REQUIRED

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end)

    vim.keymap.set('n', '<C-h>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list(), {})
    end, { desc = 'Open harpoon window' })

    vim.keymap.set('n', '<C-j>', function()
      harpoon:list():select(1)
    end)
    vim.keymap.set('n', '<C-k>', function()
      harpoon:list():select(2)
    end)
    vim.keymap.set('n', '<C-l>', function()
      harpoon:list():select(3)
    end)
    vim.keymap.set('n', '<C-;>', function()
      harpoon:list():select(4)
    end)

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<C-S-P>', function()
      harpoon:list():prev()
    end)
    vim.keymap.set('n', '<C-S-N>', function()
      harpoon:list():next()
    end)
  end,
}
