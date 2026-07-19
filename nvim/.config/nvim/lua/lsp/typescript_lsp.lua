vim.lsp.config("tsc", {
    cmd = {'tsc', '--lsp', '--stdio'},
    filetypes = {
	"javascript",
	"javascriptreact",
	"typescript",
	"typescriptreact"
    },
    root_markers =  {".git", "package.json"}
})

vim.lsp.enable("tsc")

