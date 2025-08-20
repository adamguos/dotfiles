-- config_file_path=~/.config/nvim/lua/oil-config.lua

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

require('oil').setup({
    view_options = {
        show_hidden = true
    }
})
