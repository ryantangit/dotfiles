

return {
    "nvim-treesitter/nvim-treesitter",
    build = function()
      require("nvim-treesitter.install").update({ with_sync = true })()
    end,
    config = function()
      require("nvim-treesitter.configs").setup({

				-- add from https://github.com/nvim-treesitter/nvim-treesitter?tab=readme-ov-file#supported-languages
      	ensure_installed = { 
					"c",
					"cpp",
					"css", 
					"go",
					"html", 
					"javascript", 
					"json",
					"lua", 
				  "python",
					"svelte",
					"typescript",
				}, 

        highlight = {
          enable = true, 
        },

      })
    end,
}



