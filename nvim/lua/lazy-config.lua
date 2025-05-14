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
        'everviolet/nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('evergarden').setup({
                theme = {
                    variant = 'winter'
                }
            })

            vim.cmd.colorscheme('evergarden')
            -- vim.cmd.highlight('Comment gui=italic')
            -- vim.g.sonokai_better_performance = 1
            -- vim.g.sonokai_enable_italic = true
            -- vim.g.sonokai_style = 'hard'
            vim.o.background = 'dark'
        end
    },
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
        'stevearc/conform.nvim',
        config = function() require('conform-config') end
    },
    {
        'adamguos/tmuxcolors.nvim',
    },
    {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true },
        config = function() require('lualine-config') end
    },
    {
        'aserowy/tmux.nvim',
        config = function() return require('tmux').setup() end
    },
    {
        'stevearc/oil.nvim',
        config = function()
            vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
            return require('oil').setup()
        end
    },
    {
        'psliwka/termcolors.nvim'
    },
    {
        'akinsho/bufferline.nvim',
        config = function()
            require('bufferline').setup({
                options = {
                    numbers = 'buffer_id'
                }
            })
        end
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function ()
            require('treesitter-config')
        end
    },
    {
        'MeanderingProgrammer/render-markdown.nvim',
        dependencies = {
            'nvim-treesitter/nvim-treesitter',
            'nvim-tree/nvim-web-devicons'
        },
        config = function()
            require('render-markdown-config')
        end
    }
});
