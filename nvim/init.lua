-- config_file_path=~/.config/nvim/init.lua

vim.g.mapleader = ' '
require('lazy-config')

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

vim.opt.background = 'dark'
vim.cmd.colorscheme 'dracula'

require('neo-tree-config')
require('nvim-lspconfig')
require('nvim-treesitter-config')
require('lualine').setup()
