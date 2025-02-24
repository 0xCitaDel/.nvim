return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup({
                ui = {
                    width = 0.8,
                    height = 0.75,
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗",
                    },
                },
            })
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "pyright",
                    "clangd",
                    -- "debugpy",
                    -- "pylsp"
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            local lspconfig = require("lspconfig")

            lspconfig.lua_ls.setup({
                capabilities = capabilities,
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim" },
                        },
                    },
                },
            })
            lspconfig.pyright.setup({ capabilities = capabilities })
            lspconfig.clangd.setup({ capabilities = capabilities })
            -- lspconfig.pylsp.setup({ capabilities = capabilities })

            vim.keymap.set("n", "ga", vim.lsp.buf.code_action, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
            -- vim.keymap.set("n", "ge", vim.lsp.diagnostic.goto_next, {})
            -- vim.keymap.set("n", "gE", vim.lsp.diagnostic.goto_prev, {})
            vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
            vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
            -- vim.keymap.set("n", "gl", vim.lsp.diagnostic.show_line_diagnostics, {})
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
        end,
    },
}
