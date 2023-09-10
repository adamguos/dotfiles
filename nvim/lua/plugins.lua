-- config_file_path=~/.config/nvim/lua/plugins.lua
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-neo-tree/neo-tree.nvim',
        branch = 'v3.x',
        requires = {
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons',
            'MunifTanjim/nui.nvim'
        }
    }

    use 'neovim/nvim-lspconfig'

    use 'rose-pine/neovim'
    use 'ellisonleao/gruvbox.nvim'

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use {
        'aserowy/tmux.nvim',
        config = function() return require('tmux').setup() end
    }
end)
