vim.lsp.config['lua_ls'] = {
    cmd = {"lua-language-server"},
    filetypes =  {"lua"},
    root_markers = {
	".luarc.json",
	".luarc.jsonc",
	".luacheckrc",
	".stylua.toml",
	".git",
    },
    settings = {
	Lua = {
	    runtime = {
		version = 'LuaJIT',
	    },
	}
    }
}
vim.lsp.enable('lua_ls')
