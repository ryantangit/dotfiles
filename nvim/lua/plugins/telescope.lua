-- plugins/telescope.lua:
return {
    'nvim-telescope/telescope.nvim',
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = function()
        local builtin = require('telescope.builtin')
        -- Keymaps for Telescope
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>fs', builtin.live_grep, { desc = 'Telescope live grep' })
    end
  }

