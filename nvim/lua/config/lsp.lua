vim.keymap.set('n', '<leader>d', function()
	vim.diagnostic.open_float({scope="line"})
end, { desc = 'Show diagnostics in floating window' })

