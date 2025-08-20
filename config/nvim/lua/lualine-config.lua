-- config_file_path=~/.config/nvim/lua/lualine-config.lua

require('lualine').setup({
    options = {
        section_separators = {
            left = ' ',
            right = ' '
        }
    },
    sections = {
        lualine_b = {
            { 'branch', color = 'Normal' },
            { 'diff', color = 'Normal' },
            { 'diagnostics', color = 'Normal' }
        },
        lualine_c = {
            { 'filename', color = 'Normal' }
        },
        lualine_x = {
            { 'encoding', color = 'Normal' },
            { 'fileformat', color = 'Normal' },
            { 'filetype', color = 'Normal' }
        },
        lualine_y = {
            { 'progress', color = 'Normal' }
        }
    }
});

vim.api.nvim_set_hl(0, 'lualine_c_command', { link = 'Normal' });
vim.api.nvim_set_hl(0, 'lualine_c_inactive', { link = 'Normal' });
vim.api.nvim_set_hl(0, 'lualine_c_insert', { link = 'Normal' });
vim.api.nvim_set_hl(0, 'lualine_c_normal', { link = 'Normal' });
vim.api.nvim_set_hl(0, 'lualine_c_replace', { link = 'Normal' });
vim.api.nvim_set_hl(0, 'lualine_c_terminal', { link = 'Normal' });
vim.api.nvim_set_hl(0, 'lualine_c_visual', { link = 'Normal' });
