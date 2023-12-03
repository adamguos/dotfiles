-- config_file_path=~/.config/nvim/init.lua

require('plugins')

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

vim.g.mapleader = ' '

vim.opt.background = 'dark'
vim.cmd.colorscheme 'tokyonight-night'

require('neo-tree-config')
require('nvim-lspconfig')
require('nvim-treesitter-config')
require('lualine').setup()
