
-- ChatGPT'd because I don't know what the dependencies are. So far works for pretty well. 

return {
    -- LSP Configuration
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "hrsh7th/nvim-cmp", -- Autocomplete
            "hrsh7th/cmp-nvim-lsp", -- LSP completion source
            "hrsh7th/cmp-buffer", -- Buffer completion source
            "hrsh7th/cmp-path", -- Path completion source
            "hrsh7th/cmp-cmdline", -- Command line completion
            "L3MON4D3/LuaSnip", -- Snippets
            "saadparwaiz1/cmp_luasnip", -- Snippet completion source
            "williamboman/mason.nvim", -- LSP server manager
            "williamboman/mason-lspconfig.nvim", -- Mason integration with lspconfig
            "rafamadriz/friendly-snippets", -- Predefined snippets
        },
        config = function()


						-- Make edits here to add additional servers :Mason to see the lists
            local servers = { 
							"pyright",  -- Python
							"ts_ls",  --Typescript/Javascript
							"html",  -- HTML
							"cssls",  -- CSS
							"jsonls",  -- JSON
							"gopls",  -- Golang
							"clangd", -- C/C++ 
						} 
						
            -- Configure Mason
            require("mason").setup()
            require("mason-lspconfig").setup({
                ensure_installed = servers,
                automatic_installation = true,
            })

            -- Set up LSP servers
            local lspconfig = require("lspconfig")
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            for _, server in ipairs(servers) do
                lspconfig[server].setup({
                    capabilities = capabilities,
                })
            end

            -- Setup nvim-cmp
            local cmp = require("cmp")
            cmp.setup({
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },
                mapping = {
                    ["<C-j>"] = cmp.mapping.select_next_item(),
                    ["<C-k>"] = cmp.mapping.select_prev_item(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }),
                    ["<C-Space>"] = cmp.mapping.complete(),
                },
                sources = {
                    { name = "nvim_lsp" },
                    { name = "luasnip" },
                    { name = "buffer" },
                    { name = "path" },
                },
            })

            -- Load friendly snippets
            require("luasnip.loaders.from_vscode").lazy_load()
        end,
    },
}
