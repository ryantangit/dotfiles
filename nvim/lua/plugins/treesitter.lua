

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
					"css", 
					"go",
					"html", 
					"javascript", 
					"json",
					"lua", 
				  "python",
					"typescript",
				}, 

        highlight = {
          enable = true, 
        },

      })
    end,
}



