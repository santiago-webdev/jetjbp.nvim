vim.cmd.highlight {
   args = { 'clear' },
}

if vim.fn.exists 'syntax_on' == 1 then
   vim.cmd.syntax 'reset'
end

vim.opt.termguicolors = true
vim.g.colors_name = 'jetjbp'

require 'jetjbp'
