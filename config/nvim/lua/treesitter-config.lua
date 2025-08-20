-- config_file_path=~/.config/nvim/lua/treesitter-config.lua

require('nvim-treesitter.configs').setup({
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true }
})
