
-- Keymaps for tabs

-- New Tab
vim.keymap.set('n', '<leader>tt', '<cmd>tabnew<cr>i<Esc><CMD>NvimTreeToggle<cr>', { desc = 'Create New Tab' })

-- Next Tab
vim.keymap.set('n', '<leader>tn', '<cmd>tabn<cr>', { desc = 'Move to Next Tab '})

-- Previous Tab
vim.keymap.set('n', '<leader>tp', '<cmd>tabp<cr>', {silent = true, desc = 'Move to Previous Tab '})

-- Select Tab 1 ... 9
for i = 1, 9 do
    vim.keymap.set('n', '<leader>t' .. i, ':tabnext ' .. i .. '<cr>', { noremap = true, silent = true })
end

-- Close Current Tab
vim.keymap.set('n', '<leader>tq', '<cmd>tabc<cr>', { silent = true, desc = 'Close Current Tab' })

