-- config_file_path=~/.config/nvim/lua/lazy-config.lua

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function() require('telescope-config') end
    },
    {
        'lewis6991/gitsigns.nvim',
        config = function() require('gitsigns').setup() end
    },
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-cmdline',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-vsnip',
            'hrsh7th/nvim-cmp',
            'hrsh7th/vim-vsnip'
        },
        config = function() require('nvim-lspconfig') end
    },
    {
        'junegunn/seoul256.vim',
        lazy = false,
        priority = 1000,
        config = function() vim.cmd([[colorscheme seoul256]]) end
    },
    {
        'edkolev/tmuxline.vim',
    },
    {
        'aserowy/tmux.nvim',
        config = function() return require('tmux').setup() end
    },
});
