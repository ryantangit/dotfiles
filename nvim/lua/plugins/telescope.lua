-- plugins/telescope.lua:
return {
    'nvim-telescope/telescope.nvim',
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = function()
				local telescope = require('telescope')
        local builtin = require('telescope.builtin')
				local actions = require('telescope.actions')

				-- Keymap for naving the search
				telescope.setup({
      	defaults = {
					path_display = { "smart" },
					mappings = {
						i = {
							["<C-k>"] = actions.move_selection_previous, -- move to prev result
							["<C-j>"] = actions.move_selection_next, -- move to next result
							}
						}
					}
				})

        -- Keymaps for Telescope Menu
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>fs', builtin.live_grep, { desc = 'Telescope live grep' })
    end
  }

