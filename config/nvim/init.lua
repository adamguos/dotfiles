vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.hlsearch = true
vim.opt.breakindent = true
vim.opt.showbreak = ">>  "
vim.opt.mouse = ""
vim.opt.termguicolors = true
vim.opt.cc = "80"
vim.opt.cursorline = true

--
-- LSP
--

vim.lsp.config("basedpyright", {
    cmd = { "basedpyright-langserver", "--stdio" },
    filetypes = { "python" }
})

vim.lsp.config("bash-language-server", {
    cmd = { "bash-language-server", "start" },
    filetypes = { "bash", "sh" }
})

vim.lsp.enable({ "basedpyright", "bash-language-server" })

vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gi", vim.lsp.buf.implementation)
vim.keymap.set("n", "gr", vim.lsp.buf.references)

--
-- Plugins
--

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
        "aidyak/tokusa",
        lazy = false,
        priority = 1000,
        config = function()
            vim.o.background = "dark"
            vim.cmd.colorscheme("tokusa")
        end
    },
    {
        "adamguos/tmuxcolors.nvim",
    },
    {
        "akinsho/bufferline.nvim",
        config = function()
            require("bufferline").setup({
                options = {
                    numbers = "buffer_id"
                }
            })
        end
    },
    {
        "hedyhli/outline.nvim",
        config = function()
            vim.keymap.set("n", "<leader>o", "<cmd>Outline<CR>")

            require("outline").setup()
        end
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup({
                on_attach = function(bufnr)
                    local gitsigns = require("gitsigns")

                    vim.keymap.set("n", "<leader>hr", gitsigns.reset_hunk)
                end
            })
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        requires = { "nvim-tree/nvim-web-devicons", opt = true },
        config = function()
            require("lualine").setup({
                options = {
                    section_separators = {
                        left = " ",
                        right = " "
                    }
                },
                sections = {
                    lualine_b = {
                        { "branch", color = "Normal" },
                        { "diff", color = "Normal" },
                        { "diagnostics", color = "Normal" }
                    },
                    lualine_c = {
                        { "filename", color = "Normal" }
                    },
                    lualine_x = {
                        { "encoding", color = "Normal" },
                        { "fileformat", color = "Normal" },
                        { "filetype", color = "Normal" }
                    },
                    lualine_y = {
                        { "progress", color = "Normal" }
                    }
                }
            })

            vim.api.nvim_set_hl(0, "lualine_c_command", { link = "Normal" })
            vim.api.nvim_set_hl(0, "lualine_c_inactive", { link = "Normal" })
            vim.api.nvim_set_hl(0, "lualine_c_insert", { link = "Normal" })
            vim.api.nvim_set_hl(0, "lualine_c_normal", { link = "Normal" })
            vim.api.nvim_set_hl(0, "lualine_c_replace", { link = "Normal" })
            vim.api.nvim_set_hl(0, "lualine_c_terminal", { link = "Normal" })
            vim.api.nvim_set_hl(0, "lualine_c_visual", { link = "Normal" })
        end
    },
    {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
            vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
            vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
            vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
        end
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function ()
            require("nvim-treesitter.configs").setup({
                auto_install = true,
                highlight = { enable = true },
            })
        end
    },
    {
        "psliwka/termcolors.nvim"
    },
    {
        "saghen/blink.cmp",
        version = "1.*",
        opts = {
            cmdline = {
                keymap = { preset = "inherit" },
                completion = { menu = { auto_show = true } },
            },
        },
    },
    {
        "stevearc/oil.nvim",
        config = function()
            vim.keymap.set("n", "-", "<CMD>Oil<CR>", {
                desc = "Open parent directory"
            })

            require("oil").setup({
                view_options = {
                    show_hidden = true
                }
            })
        end
    },
})
