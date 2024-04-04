-- config_file_path=~/.config/nvim/init.lua

vim.g.mapleader = ' '

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.hlsearch = true
vim.opt.breakindent = true
vim.opt.showbreak = '>>  '
vim.opt.mouse = ''
vim.opt.termguicolors = true

vim.opt.background = 'dark'

require('lazy-config')
