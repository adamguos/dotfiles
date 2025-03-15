local conform = require('conform')

conform.setup({
    formatters_by_ft = {
        python = { "isort", "black" },
        cpp = { "clang-format" }
    },
    format_on_save = {}
})

vim.keymap.set('n', '<space>nf', function()
    conform.format()
end, opts)
