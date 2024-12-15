return {
    "nvim-tree/nvim-tree.lua",
    config = function()
        require("nvim-tree").setup({
            view = {
                width = 30, 
                side = "left", 
            },
            renderer = {
                highlight_git = true, 
                icons = {
                    show = {
                        git = true,
                        folder = true,
                        file = true,
                        folder_arrow = true,
                    },
                },
            },
            filters = {
                dotfiles = false, 
            },
            actions = {
                open_file = {
                    quit_on_open = true, 
                },
            },
        })

				-- Nvim-Tree Keybinds
				vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { noremap = true, silent = true })
    end,
}
