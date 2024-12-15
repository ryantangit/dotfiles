
-- The most important file of them all. 

return {
  'maxmx03/solarized.nvim',
  lazy = false,
  priority = 1000,
  ---@type solarized.config
  opts = {},
  config = function(_, opts)
    vim.o.termguicolors = true
    vim.o.background = 'dark' -- change to 'light' for a flashbang
    require('solarized').setup(opts)
    vim.cmd.colorscheme 'solarized'
  end,
}
