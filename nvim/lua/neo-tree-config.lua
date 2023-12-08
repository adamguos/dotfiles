-- config_file_path=~/.config/nvim/lua/neo-tree-config.lua

vim.api.nvim_set_keymap('n', '<leader>t', ':Neotree position=float toggle reveal_force_cwd<CR>', {})

vim.api.nvim_set_keymap('n', '<leader>r', ':lua require("buffer_manager.ui").toggle_quick_menu()<CR>', {})
