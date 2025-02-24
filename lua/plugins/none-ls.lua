-- lua/plugins/none-ls.lua - formatting plugin

return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua.with({
                    extra_args = { "--indent-type", "Spaces" },
                }),
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.isort,
            },
        })
        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
}
