--[[
--
-- neovim config for making neovim a:
-- - IDE for coding C/C++
--
--]]

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- use spaces for tab, width of tab is 4
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true

-- set backspace to what it is expected to be:
-- indent,eol,start
vim.opt.backspace = '2'
-- shows the letters of a command in the commandline until the command is complete
vim.opt.showcmd = true
-- shows the statusline always
vim.opt.laststatus = 2
-- automatically write file because of certain commands like e.g. buffer change
vim.opt.autowrite = true
-- automatically read the file if it has been changed on disk
vim.opt.autoread = true

vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.signcolumn = "yes"
vim.opt.scrolloff = 5
vim.opt.sidescrolloff = 8


