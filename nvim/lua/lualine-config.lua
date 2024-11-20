require('lualine').setup({
    options = {
        section_separators = {
            left = ' ',
            right = ' '
        },
        always_divide_middle = false
    },
    sections = {
        lualine_b = {
            { 'branch', color = 'Normal' },
            { 'diff', color = 'Normal' },
            { 'diagnostics', color = 'Normal' }
        },
        lualine_c = {
            { 'filename', color = 'Normal' },
            { 'terminal', color = 'Normal' },
            { 'replace', color = 'Normal' },
            { 'command', color = 'Normal' },
            { 'visual', color = 'Normal' },
            { 'normal', color = 'Normal' },
            { 'insert', color = 'Normal' }
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
